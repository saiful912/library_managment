<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/addBooks', 'BooksController@create');
Route::post('/addBooks', 'BooksController@store')->name('addBooks');
Route::get('/booksList', 'BooksController@index');

Route::get('/addCategories', 'BooksCategoryController@create');
Route::post('/addCategories', 'BooksCategoryController@store');
Route::get('/categoriesList', 'BooksCategoryController@index');

Route::get('/addAuthor','AuthorsController@create');
Route::post('/addAuthor', 'AuthorsController@store');




Route::get('/issuedBooks','BooksIssuedController@index');
Route::get('/issueBooks', 'BooksIssuedController@create');
Route::post('/issueBooks', 'BooksIssuedController@store')->name('issueBooks');



Route::get('/membersList', 'MemberController@index');
Route::get('/addMembers',  'MemberController@create');
Route::post('/addMembers', 'MemberController@store');
