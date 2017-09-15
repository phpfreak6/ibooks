<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BooksCategorie extends Model
{
	protected $table = "books_categories";
	
	
	// public function books()
    // {
		// return $this->belongsToMany('App\Book', 'books_categories_relationships', 'cat_id', 'book_id');
	// }
	
	
	/* public function bookscategorie() {
        return $this->belongsTo('App\BooksCategoriesRelationship');
    } */
	
	
	
	// public function cates() {
        // return $this->hasMany('App\BooksCategoriesRelationship'); //return all resources from a teacher
    // how can i get the resources with a given signature
    // }
	

    // public function books()
    // {
        // return $this->hasMany('App\Book');
    // }
	
	// public function bookscategorie()
    // {
        // return $this->hasMany('App\BooksCategoriesRelationship','cat_id', 'id');
    // }
}
