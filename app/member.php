<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class member extends Model
{
    public $guarded = [];

   /* public function thesis(){
        return $this->belongsToMany('App\thesis');
    }

    public function memStaff(){
        return $this->belongsTo('App\memStaff');
    }

    public function memStudent(){
        return $this->belongsTo('App\memStudent');
    }*/

    public function stories(){
        return $this->hasMany(Story::class);
    }
/*
    public function returnBooks(){
        return $this->hasMany('App\booksReturned');
    }*/
}
