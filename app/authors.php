<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class authors extends Model
{
    public $timestamps = false;
    public function books(){
        return $this->hasMany('books');
    }
}
