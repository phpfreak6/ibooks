@extends('master')

@section('content')

    <div class="container">

        @if (session()->has('success_message'))
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
        @endif

        @if (session()->has('error_message'))
            <div class="alert alert-danger">
                {{ session()->get('error_message') }}
            </div>
        @endif

        <div class="jumbotron text-center clearfix">
            <h2>Laravel Shopping Cart Example</h2>
            <p>An example Laravel App that demos the basic functionality of a typical e-commerce shopping cart.</p>
            <p>
                <a href="http://andremadarang.com/implementing-a-shopping-cart-in-laravel/" class="btn btn-primary btn-lg" target="_blank">Blog Post</a>
                <a href="https://github.com/drehimself/laravel-shopping-cart-example" class="btn btn-success btn-lg" target="_blank">GitHub Repo</a>
            </p>
        </div> <!-- end jumbotron -->

        @foreach ($books->chunk(4) as $items)
            <div class="row">
                @foreach ($items as $book)
                    <div class="col-md-3">
                        <div class="thumbnail">
                            <div class="caption text-center">
                                <a href="{{ url('shop', [$book->slug]) }}"><img src="{{ asset('img/' . $book->image) }}" alt="book" class="img-responsive"></a>
                                <a href="{{ url('shop', [$book->slug]) }}"><h3>{{ $book->name }}</h3>
                                <p>{{ $book->price }}</p>
                                </a>
                            </div> <!-- end caption -->
                        </div> <!-- end thumbnail -->
                    </div> <!-- end col-md-3 -->
                @endforeach
            </div> <!-- end row -->
        @endforeach

    </div> <!-- end container -->

@endsection