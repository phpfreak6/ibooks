<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
	
	protected $table = 'books'; 

   /*  public function booksrelation()
    {
		
        // return $this->hasMany('App\BooksCategoriesRelationship','cat_id','id');
    }
	
	public function bookcats()
    {
		// return $this->morphMany('App\BooksCategoriesRelationship');
        return $this->belongsTo('App\BooksCategorie','cat_id','id');
    } */
	
	public function categories()
    {
          return $this->belongsToMany('App\BooksCategorie', 'books_categories_relationships', 'book_id', 'cat_id');
    }
}
