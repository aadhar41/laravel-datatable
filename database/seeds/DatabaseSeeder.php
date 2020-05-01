<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
require_once 'vendor/autoload.php';

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);
    	$faker = Faker\Factory::create();
    	
        DB::table('users')->insert([
            'name' => $faker->name,
            'email' => $faker->email,
            // 'name' => Str::random(10),
            // 'email' => Str::random(10).'@mailinator.com',
            // 'password' => Hash::make('password'),
        ]);
    }
}
