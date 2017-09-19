<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
	
	protected $table = 'books'; 	
	
	public function categories()
    {
          return $this->belongsToMany('App\BooksCategorie', 'books_categories_relationships', 'book_id', 'cat_id');
    }
	
}
