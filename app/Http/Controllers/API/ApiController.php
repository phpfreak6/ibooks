<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\OrderBook;
use App\Order;
use App\Book;
use App\BooksCategorie;
use App\BooksCategoriesRelationship;
use Illuminate\Support\Facades\DB;

class ApiController extends Controller
{
	public $successStatus = 200;
	
	public $per_page = 100;
	
	 
	/**
     * Home Page .
     * @Method POST
     */
	public function homepage(){
		
		// https://laravel.com/docs/5.5/queries
		
		$sections = array();
		
		$categories 	= BooksCategorie::get();
		$new_launches 	= Book::orderBy('id', 'desc')->limit(5)->get();
		$featured_books = Book::join("featured_books", "featured_books.book_id", "=", "books.id")->orderBy('featured_books.datetime', 'desc')->limit(5)->get();
		$free_books 	= Book::where('price', 0.00)->orderBy('id', 'desc')->limit(5)->get();
		$best_sellers 	= OrderBook::selectRaw('SUM(order_books.book_quantity) as qty, order_books.book_id, books.*')
							->join('orders', 'orders.id', '=', 'order_books.order_id')
							->join('books', 'books.id', '=', 'order_books.book_id')
							->where('orders.created_at', '>=', DB::raw('DATE_SUB( CURDATE(), INTERVAL 1 DAY )') )
							->groupBy('order_books.book_id')
							->orderBy('qty', 'desc')
							->get();
					
		$sections['categories'] = 		$categories;
		$sections['best_sellers'] = 	$best_sellers;
		$sections['featured_books'] = 	$featured_books;
		$sections['new_launches'] = 	$new_launches;
		$sections['free_books'] = 		$free_books;	
		
		return response()->json(array("response"=>array("status"=>"1", "message"=>"", "data"=> $sections )), $this->successStatus);
		
	}
	
	
	
	/**
     * All Categories.
     * @Method POST
     */
	public function allcategories(){
		
		$allcats = BooksCategorie::where('id','>',0)->get();
		
		return response()->json(array("response"=>array("status"=>"1", "message"=>"", "data"=> $allcats )), $this->successStatus);
		
	}
	
	
    /**
     * All books.
     * @Method POST
     * @Parms
     * page 	-  Default 1
     * per_page - Default 10 rows
     * id 		- Book ID
     */
    public function allbooks()
    {
		// DB::enableQueryLog();
		$books = Book::with(['categories']);
		if(!empty(request('bookid'))){
			
			$bookid = request('bookid');
			$books  = $books->where('id','=',$bookid)->first();
			
		}
		else{
			
			if(!empty(request('catids'))){	
				$catids = request('catids');					
				// $catids = explode(',', $catids);
					
				$books = $books->whereHas('categories', function($q) use ($catids) { $q->whereIn( 'cat_id', $catids ); });
				
				// print_r($catids );
			}

			if(!empty(request('search'))){
				
				$search = request('search');
				$books  = $books->where('title','like','%'.$search.'%');
				
			}

			
			
			
			$books  = $books->get();
			// echo '<pre>';
			// print_r(DB::getQueryLog());
			// echo '</pre>';
			
		}
		/* else{
			$books  = Book::with(['categories'])->get();
		}*/
				
		return response()->json(array("response"=>array("status"=>"1", "message"=>"", "data"=> $books )), $this->successStatus);
		
    }



}
