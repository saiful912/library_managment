<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class books extends Model
{
    protected $primarykey = 'bookId';

    public function category(){
        return $this->belongsTo('booksCategory');
    }

    public function author(){
        return $this->belongsTo('authors');
    }
}
