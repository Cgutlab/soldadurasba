<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Postventa extends Model
{
     protected $fillable = [
        'title', 'subtitle', 'text', 'image', 'order',
    ];
}
