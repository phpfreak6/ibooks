<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('publising_year');            
            $table->integer('publisher_id');
            $table->integer('author_id');
			$table->string('language');
			$table->text('description');
			$table->text('demo_file');
			$table->text('orignal_file');
			$table->integer('total_pages');
			$table->text('image');
			$table->decimal('price', 10, 2);
			$table->string('slug')->unique();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Schema::drop('books');
    }
}
