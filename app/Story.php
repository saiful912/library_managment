<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Story extends Model
{
    public $guarded=[];


    public function member()
    {
        return $this->belongsTo(member::class);
    }
}
