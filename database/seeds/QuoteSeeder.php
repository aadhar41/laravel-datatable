<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
require_once 'vendor/autoload.php';

class QuoteSeeder extends Seeder
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
    	for ($i = 1; $i <= 40; $i++) {
	        DB::table('quotes')->insert([
	            'week' => $i,
	            'text' => $faker->realText,
	            'status' => 1,
	            // 'created_at' => $faker->dateTime,
	            // 'updated_at' => $faker->dateTime,
	        ]);
		}
    }
}
