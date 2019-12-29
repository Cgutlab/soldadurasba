<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subfamilia extends Model
{
   	protected $fillable = [
   		'title', 'image', 'order', 'family_id',
   	];

   	public function familia() {
        return $this->Belongsto('App\Familia','family_id');
    }

    public function producto() {
    	return $this->Hasmany('App\Producto');
    }

}
