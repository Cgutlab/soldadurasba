<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
	protected $fillable = [
    'code', 'name', 'image', 'descripcion', 'important', 'pdf', 'video', 'keyword', 'subfamily_id', 'order',
    ];

    public function subfamilia() {
        return $this->Belongsto('App\Subfamilia','subfamily_id');
    }

    public function productos()
    {
        return $this->belongsToMany('App\Producto', 'producto_producto', 'producto_id', 'producto2_id');
    }
}
