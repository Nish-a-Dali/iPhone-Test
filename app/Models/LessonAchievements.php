<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LessonAchievements extends Model
{
    use HasFactory;

    public $table = "master_lesson_achievements";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title','achieve_count','order'
    ];
}
