<?php

namespace App\Listeners;

use App\Events\BadgeUnlocked;
use DB;

class BadgeUnlockListener
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
    public function handle(BadgeUnlocked $event)
    {
        DB::table('userbadges')->insert([
            'user_id' => $event->user,
            'badge_id' => $event->badgeid
        ]);
    }
}
