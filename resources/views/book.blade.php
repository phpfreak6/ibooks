@extends('master')

@section('content')

    <div class="container">
        <p><a href="{{ url('/shop') }}">Shop</a> / {{ $book->name }}</p>
        <h1>{{ $book->name }}</h1>

        <hr>

        <div class="row">
            <div class="col-md-4">
                <img src="{{ asset('img/' . $book->image) }}" alt="book" class="img-responsive">
            </div>

            <div class="col-md-8">
                <h3>${{ $book->price }}</h3>
                <form action="{{ url('/cart') }}" method="POST" class="side-by-side">
                    {!! csrf_field() !!}
                    <input type="hidden" name="id" value="{{ $book->id }}">
                    <input type="hidden" name="name" value="{{ $book->name }}">
                    <input type="hidden" name="price" value="{{ $book->price }}">
                    <input type="submit" class="btn btn-success btn-lg" value="Add to Cart">
                </form>

                <form action="{{ url('/wishlist') }}" method="POST" class="side-by-side">
                    {!! csrf_field() !!}
                    <input type="hidden" name="id" value="{{ $book->id }}">
                    <input type="hidden" name="name" value="{{ $book->name }}">
                    <input type="hidden" name="price" value="{{ $book->price }}">
                    <input type="submit" class="btn btn-primary btn-lg" value="Add to Wishlist">
                </form>


                <br><br>

                {{ $book->description }}
            </div> <!-- end col-md-8 -->
        </div> <!-- end row -->

        <div class="spacer"></div>

        <div class="row">
            <h3>You may also like...</h3>

            @foreach ($interested as $book)
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

        <div class="spacer"></div>


    </div> <!-- end container -->

@endsection
