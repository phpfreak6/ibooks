<?php

use Illuminate\Database\Seeder;

class BooksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('books')->insert([
            'name' => 'Playstation 4',
            'slug' => 'playstation-4',
            'description' => 'description goes here',
            'price' => 399.99,
            'image' => 'ps4.jpg',
        ]);
  
    }
}
