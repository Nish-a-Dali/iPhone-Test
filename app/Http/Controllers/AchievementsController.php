<?php

namespace App\Http\Controllers;

use DB;
use event;
use Carbon\Carbon;
use App\Models\User;
use Illuminate\Http\Request;
use App\Events\AchievementUnlocked;
use App\Events\BadgeUnlocked;
use Illuminate\Support\Facades\Validator;

class AchievementsController extends Controller
{
    public function index(User $user)
    {
        $user_id = $user->id;
        $unlocked_achieve = DB::table('userachievements')
                        ->select('achievement_name')
                        ->Where('user_id',$user_id)
                        ->orderBy('created_on')
                        ->distinct()->get()->toArray();
        // Next Available Achievements
        $next_achieve = $this->nextAvailAchievements($user_id);
        // Badges
        $curr_badge = '';
        $next_badge = '';

        $badges = DB::table('userbadges')
                        ->Where('user_id',$user_id)
                        ->orderBy('created_on','desc')
                        ->distinct()->get()->toArray();
        if (!empty($badges)) {
            // Current Badge
            $arr = DB::table('master_badges')->select('title')
                ->Where('id', $badges[0]->badge_id)->get(); 
            $curr_badge = $arr[0]->title;
            // Next Badge
            $arr = DB::table('master_badges')->select('title','achieve_count')
                ->Where('id','>', $badges[0]->badge_id)->orderBy('id')->limit(1)->get();
            $next_badge = $arr[0]->title;

        } else {
            $arr = DB::table('master_badges')->select('title','achieve_count')->orderBy('id')->limit(1)->get();
            $next_badge = $arr[0]->title;
        }
        // remaining to unlock next badge
        $remcounts = $arr[0]->achieve_count - count($unlocked_achieve);

        return response()->json([
            'unlocked_achievements' => $unlocked_achieve,
            'next_available_achievements' => $next_achieve,
            'current_badge' => $curr_badge,
            'next_badge' => $next_badge,
            'remaining_to_unlock_next_badge' => $remcounts
        ]);
    }

    // To get next available achievements
    public function nextAvailAchievements($user_id) {
        $countdetails = DB::table('userachievements')
                        ->select('type', DB::raw('count(*) as typecount'))
                        ->Where('user_id',$user_id)
                        ->groupBy('type')->get();

        $masterlesson = DB::table('master_lesson_achievements')->count();
        $mastercomment = DB::table('master_comment_achievements')->count();

        $comcount = $mastercomment - $countdetails[0]->typecount;
        $lescount = $masterlesson - $countdetails[1]->typecount;
        
        $nextavail_comachieve = DB::table('master_comment_achievements')
                            ->select('order','title')
                            ->orderBy('order','desc')
                            ->distinct()->limit($comcount)->get()->toArray();
        $nextavail_lesachieve = DB::table('master_lesson_achievements')
                            ->select('order','title')
                            ->orderBy('order','desc')
                            ->distinct()->limit($lescount)->get()->toArray();

        $nextavail_lesachieve = array_values(collect($nextavail_lesachieve)->sortBy('order')->all());
        $nextavail_comachieve = array_values(collect($nextavail_comachieve)->sortBy('order')->all());
        return array_values(array_merge($nextavail_lesachieve,$nextavail_comachieve));
    }

    // Lesson watched
    public function lessonWatched(Request $request)
    {
        try {
            $data = $request->only(['lesson_id','user_id']);
            $rules = [
                'lesson_id' => 'required',
                'user_id' => 'required'
            ];
            Validator::make($data, $rules)->validate();
            $msg1 = '';
            $msg2 = '';
            $msgerr = '';
            // To check user Id is valid or not
            $usercount = DB::table('users')
                    ->Where('id',$data['user_id'])
                    ->count();
            if ($usercount == 0) {
                $msgerr = 'Invalid user!';
            } 
            // To check lesson Id is valid or not
            $lescount = DB::table('lessons')
                    ->Where('id',$data['lesson_id'])
                    ->count();
            if($lescount == 0) {
                $msgerr = 'Lesson does not exists!';
            }
            if ($msgerr == '') {
                // To Check same lesson already entered
                $count = DB::table('lesson_user')
                        ->Where('user_id',$data['user_id'])
                        ->Where('lesson_id',$data['lesson_id'])
                        ->Where('watched',1)
                        ->distinct()->count();

                if($count > 0) {
                    $msgerr = 'Lesson already exists!';
                } else {
                    // Inserting into LessonUser Table
                    $data['watched'] = 1;
                    DB::beginTransaction();
                    DB::table('lesson_user')->insert($data);
                    DB::commit();
                    $msg1 = $this->lessonAchievement($data);
                    // Check for badge
                    $msg2 = $this->badgeUnlock($data);
                }
            }
            return response()->json([
                'error_msg' => $msgerr,
                'achievement_msg' => $msg1,
                'badge_msg' => $msg2
            ]);
        } catch (\Exception $ex) {
            DB::rollback();
            return ($ex);
        }
    }

    // Checking for lesson achievement and trigger event
    public function lessonAchievement($data)
    {
        try {
            $noachieve = 1;
            $lescount = DB::table('lesson_user')
                    ->Where('user_id',$data['user_id'])
                    ->Where('watched',1)
                    ->distinct()->count();

            $msg = 'Lesson '.$lescount.' Completed';

            $data['type'] = 1;

            $lesdata = DB::table('master_lesson_achievements')
                    ->Where('achieve_count',$lescount)
                    ->distinct()->get()->toArray();

            if(count($lesdata) > 0) {
                $noachieve = 0;
                $data['achievement'] = $lesdata[0]->title;
            } 

            if ($noachieve != 1) {
                $msg = '* '.$data['achievement'].' - Achievement Unlocked *';
                DB::beginTransaction();
                event(new AchievementUnlocked($data['user_id'], $data['achievement'],$data['type']));
                DB::commit();
                // For Unlock Badges

            }            
            return $msg;
        } catch (\Exception $ex) {
            DB::rollback();
            return ($ex);
        }
    }

    // Comment Written
    public function commentWritten(Request $request)
    {
        try {
            $data = $request->only(['body','user_id']);
            $rules = [
                'body' => 'required',
                'user_id' => 'required'
            ];
            Validator::make($data, $rules)->validate();
            $msg1 = '';
            $msg2 = '';
            $msgerr = '';
            // To check user Id is valid or not
            $usercount = DB::table('users')
                    ->Where('id',$data['user_id'])
                    ->count();
            if ($usercount == 0) {
                $msgerr = 'Invalid user!';
            } else {
                // To Check same lesson already entered
                $count = DB::table('comments')
                        ->Where('user_id',$data['user_id'])
                        ->where(DB::raw('lower(body)'), 'like', '%' . strtolower($data['body']) . '%')
                        ->distinct()->count();

                if($count > 0) {
                    $msgerr = 'Duplicate comment found!';
                } else {
                    // Inserting into Comments Table
                    $data['body'] = trim($data['body']);
                    $data['created_at'] = Carbon::now();
                    DB::beginTransaction();
                    DB::table('comments')->insert($data);
                    DB::commit();
                    $msg1 = $this->commentAchievement($data);
                    // Check for badge
                    $msg2 = $this->badgeUnlock($data);
                }
            }
            return response()->json([
                'error_msg' => $msgerr,
                'achievement_msg' => $msg1,
                'badge_msg' => $msg2
            ]);
        } catch (\Exception $ex) {
            DB::rollback();
            return ($ex);
        }
    }

    // Checking for comment achievement and trigger event
    public function commentAchievement($data)
    {
        try {
            $noachieve = 1;
            $comcount = DB::table('comments')
                    ->Where('user_id',$data['user_id'])
                    ->distinct()->count();

            $msg = 'Comment '.$comcount.' written';

            $data['type'] = 2;

            $lesdata = DB::table('master_comment_achievements')
                    ->Where('achieve_count',$comcount)
                    ->distinct()->get()->toArray();
            
            if(count($lesdata) > 0) {
                $noachieve = 0;
                $data['achievement'] = $lesdata[0]->title;
            } 
            
            if ($noachieve != 1) {
                $msg = '* '.$data['achievement'].' - Achievement Unlocked *';
                DB::beginTransaction();
                event(new AchievementUnlocked($data['user_id'], $data['achievement'],$data['type']));
                DB::commit();
            }
            
            return $msg;
        } catch (\Exception $ex) {
            DB::rollback();
            return ($ex);
        }
    }

    // Checking to unlock badge and trigger event
    public function badgeUnlock($data)
    {
        try {
            $nobadge = 1;
            $comcount = DB::table('userachievements')
                    ->Where('user_id',$data['user_id'])
                    ->distinct()->count();

            $msg = 'No badges available at this stage';
            $data['badge_title'] = '';
            $lesdata = DB::table('master_badges')
                    ->Where('achieve_count','<=',$comcount)
                    ->orderBy('achieve_count','desc')
                    ->distinct()->get()->toArray();
            
            if(count($lesdata) > 0) {
                $nobadge = 0;
                $data['badge_id'] = $lesdata[0]->id;
                $data['badge_title'] = $lesdata[0]->title;
            } 
            
            if ($nobadge != 1) {
                $msg = '* BADGE - '.$data['badge_title'].' *';
                // Check badge existing count
                $existing_count = DB::table('userbadges')
                        ->Where('user_id',$data['user_id'])
                        ->Where('badge_id',$data['badge_id'])->count();

                if ($existing_count == 0) {
                    DB::beginTransaction();
                    event(new BadgeUnlocked($data['user_id'], $data['badge_id']));
                    DB::commit();                    
                }
            }
            
            return $msg;
        } catch (\Exception $ex) {
            DB::rollback();
            return ($ex);
        }
    }
}
