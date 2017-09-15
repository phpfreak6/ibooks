<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BooksCategoriesRelationship extends Model
{
    protected $table = 'books_categories_relationships';
	
	
	/* public function book()
    {
		return $this->belongsTo('App\Book');
    }
	
	public function bookscategorie()
    {
		// return $this->hasMany('App\BooksCategorie','id','cat_id');
		return $this->belongsTo('App\BooksCategorie');
    }
	
	 */
	
	/* public function bookscategorie()
	{
		return $this->belongsToMany('App\BooksCategorie', 'products_shops', 
      'shops_id', 'products_id');
	} */
	
	// public function booksrelationcats()
    // {
        // return $this->hasMany('App\BooksCategorie','id','cat_id');
    // }

   /*  public function book()
    {
        return $this->hasOne('App\Book','id', 'book_id');
		
    }

    public function bookscategorie()
    {
        return $this->hasMany('App\BooksCategorie','id', 'cat_id');
    } */
}
