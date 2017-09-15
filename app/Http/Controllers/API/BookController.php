<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Book;
use App\BooksCategoriesRelationship;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
	public $successStatus = 200;
	
	public $per_page = 100;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
		//Default Per page
		$per_page = $this->per_page;		

		if(!empty(request('per_page'))){
			$per_page = request('per_page');
		}
		
		/* // $books = Book::where('id','>',0)->paginate($per_page);
		
		// $books = DB::table('books')
            // ->join('books_categories_relationships', 'books.id', '=', 'books_categories_relationships.book_id')
            // ->join('books_categories', 'books_categories_relationships.cat_id', '=', 'books_categories.id')
            // ->select('*')
            // ->get();
		
		// $user_info = DB::table('usermetas')
                 // ->select('browser', DB::raw('count(*) as total'))
                 // ->groupBy('browser')
                 // ->get();
				*/ 
				 
		/* $books = 	DB::table('books')
					->select("*")             
					->join("books_categories_relationships", "books.id", "=", "books_categories_relationships.book_id")
					->join("books_categories", "books_categories.id", "=", "books_categories_relationships.cat_id")
					// ->where("col_name", "=",”some_value”)
					->get();	 */

		// $books1 = DB::table('books')->select("*")->join("books_categories_relationships", "books.id", "=", "books_categories_relationships.book_id")->get();
		// $books2 = DB::table('books_categories')->select("*")->join("books_categories_relationships", "books_categories.id", "=", "books_categories_relationships.cat_id")->get();

		// $books = $books2->merge($books1); */
		
		
		// $books = Book::with('booksrelation','bookcats')->get();
		
		// $books = BooksCategoriesRelationship::with(['book','bookscategorie'])->get();
		$books = Book::with(['categories'])->get();
		
		
		return response()->json(array("response"=>array("status"=>"1", "message"=>"", "data"=> $books )), $this->successStatus);
		
		
		
		// DB::enableQueryLog();
		
		// $books = Book::paginate($per_page);
		// $skip = request('limit')*request('offset');
		// $skip = request('limit');
		// $limit = $count - $skip; // the limit
		
		// $count = Book::count();
		// $take = 2;
		// $skip = $count - $take;

		// $currentPage = request('offset'); // Default to 1

		// $books = Book::latest('created_at')->take(3)->skip($skip + (($currentPage - 1) * $take));
		
		// $books = DB::table('books')->skip( request('offset') )->take(  request('limit') )->get();
		// echo "<pre>";
		
		// print_r(DB::getQueryLog());
		
		
		// $books = Book::skip($skip)->paginate(request('offset'))->get();
		
		// echo "<pre>";
		// print_r($books);
		// echo "</pre>";exit;
		// $books = Book::all()->offset( request('offset') )->limit( request('limit') )->get();
		// $books =  DB::table('books')->offset( request('offset') )->limit( request('limit') )->get();
		// $books = Book::take( request('limit') )->offset( request('offset') )->get();
		// $books = Book::take( request('limit') )->skip( request('offset') )->get();
		// $books = DB::table('books')->skip( request('offset') )->take(  request('limit') )->get();
		
		// return response()->json(array("response"=>array("status"=>"1", "message"=>"Logged in sucessfully!!", "data"=>$books)), $this->successStatus);
		
		
    }



}
