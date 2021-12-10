<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class LAchievementSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = storage_path() . "/datafeed/master_les_achievements.json";

        $json = json_decode(file_get_contents($path), true);

        foreach ($json as $data) {
            \App\Models\LessonAchievements::insert($data);
        }
    }
}
