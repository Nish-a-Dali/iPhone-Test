<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class BadgeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = storage_path() . "/datafeed/master_badges.json";

        $json = json_decode(file_get_contents($path), true);

        foreach ($json as $data) {
            \App\Models\Badges::insert($data);
        }
    }
}