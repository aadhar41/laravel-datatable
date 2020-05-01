<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
require_once 'vendor/autoload.php';

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);
    	$faker = Faker\Factory::create();
    	for ($i = 0; $i < 100; $i++) {
	        DB::table('users')->insert([
	            'name' => $faker->name,
	            'email' => $faker->email,
	            'role' => rand(0,1),
	            'status' => rand(0,1),
	            'created_at' => $faker->dateTime,
	            'updated_at' => $faker->dateTime,
	        ]);
		}
    }
}
