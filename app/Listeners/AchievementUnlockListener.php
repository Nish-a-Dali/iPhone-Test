<?php

namespace App\Listeners;

use App\Events\AchievementUnlocked;
use DB;

class AchievementUnlockListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle(AchievementUnlocked $event)
    {
        DB::table('userachievements')->insert([
            'user_id' => $event->user,
            'achievement_name' => $event->achievementname,
            'type' => $event->type            
        ]);
    }
}
