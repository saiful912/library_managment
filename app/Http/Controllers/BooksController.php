<?php

namespace App\Http\Controllers;
use App\authors;
use App\books;
use App\booksCategory;
use Illuminate\Http\Request;

class BooksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = books::all();
        return view('booksList', ['books'=> $books]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $auths = authors::all();
        $cats = booksCategory::all();

        return view('addBooks', array('auths' => $auths, 'cats'=> $cats ));
   }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

//        $book = new books();
//        $book->bookTitle = $request->title;
//        $book->edition = $request->edition;
//        $book->authId = authors::where('name', $request->author)->first()->authId;
//        $book->catId = booksCategory::where('catName', '=', $request->cat)->first()->catId;
//        $book->totalAvail = $request->booksAvail;
//
//        $book->save();
//        return redirect('/home');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
