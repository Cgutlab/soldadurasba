<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Descarga extends Model
{
	protected $fillable = [
    	'title', 'image', 'route', 'order',
    ];
}
