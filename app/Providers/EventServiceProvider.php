<?php

namespace App\Providers;

use App\Events\LessonWatched;
use App\Events\CommentWritten;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;
use App\Events\AchievementUnlocked;
use App\Listeners\AchievementUnlockListener;
use App\Events\BadgeUnlocked;
use App\Listeners\BadgeUnlockListener;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        CommentWritten::class => [
            //
        ],
        LessonWatched::class => [
            //
        ],
        AchievementUnlocked::class => [
            AchievementUnlockListener::class
        ],
        BadgeUnlocked::class => [
            BadgeUnlockListener::class
        ]
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
