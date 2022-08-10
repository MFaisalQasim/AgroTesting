<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TractorImage extends Model
{
    protected $guarded = [];
    protected $table='tractor_images';
    public $timestamps  = false;

    public function TractorImages(){

        return $this->belongsTo(Tractor::class ,'tractor_id');
    }

}
