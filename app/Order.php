<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	
	public function order_books()
    {
          return $this->belongsToMany('App\Book', 'order_books', 'order_id', 'book_id');
    }
	
}
