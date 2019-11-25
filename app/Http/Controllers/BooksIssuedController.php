<?php

namespace App\Http\Controllers;
use App\booksCategory;
use App\member;
use App\Story;
use Illuminate\Http\Request;
use App\booksIssued;

class BooksIssuedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stories = Story::all();
        return view('issuedBooks',compact('stories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


        $members = member::all();
        return view('issueBooks', array('members' => $members));


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'member_id' => 'required',
            'bookname' => 'required|min:4',
            'bookissueid' => 'required',
            'issueDate' => 'required',
            'retDate' => 'required',
        ]);


        $book=new Story();
        $book->member_id=$request->member_id;
        $book->bookname=$request->bookname;
        $book->bookissueid=$request->bookissueid;
        $book->issueDate=$request->issueDate;
        $book->retDate=$request->retDate;
        $book->save();
        session()->flash('success','books registered');
        return redirect()->back();
        /*       $check = booksIssued::create([
                   'issueDate' => $req->issueDate,
                   'retDate' => $req->returnDate,
                   'bookissueid' => $req->bookissueid,
                 //  'memId' => $req->memId
               ]);

               return redirect('/issueBooks');*/

//        $book = new booksIssued();
//         dd($book);
//
//        $book->issueDate = $request->issueDate;
//        $book->retDate = $request->retDate;
//        $book->bookname = $request->bookname;
//        // $book->memName = $request->memName;
//        $book->memId = booksIssued::where('memName', $request->member)->first()->memId;
//        $book->bookissueid = $request->bookissueid;
//
//        $book->save();
//        return redirect('/home');




    }

    /**
     * Display the specified resource.
     *
     * @param  \App\booksCategory  $booksCategory
     * @return \Illuminate\Http\Response
     */
    public function show(booksCategory $booksCategory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\booksCategory  $booksCategory
     * @return \Illuminate\Http\Response
     */
    public function edit(booksCategory $booksCategory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\booksCategory  $booksCategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, booksCategory $booksCategory)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\booksCategory  $booksCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(booksCategory $booksCategory)
    {
        //
    }
}
