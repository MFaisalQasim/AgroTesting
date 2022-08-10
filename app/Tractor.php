<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tractor extends Model
{
    use SoftDeletes;
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'tractors';

    /**
    * The database primary key value.
    *
    * @var string
    */  
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'description', 'feature_description', 'technical_description', 'mannual','tractor_slug','status'];

    public function getfrontTractorImages(){
        return $this->hasOne(TractorImage::Class, 'tractor_id','id')->latest();  
    }
    public function getTractorImages(){

        return $this->hasMany(TractorImage::class ,'tractor_id','id')->take(3);
    }

    public function getBrandName(){

        return $this->hasOne(Brand::class ,'id','brand_id');
    }
    public function QA()
    {
        return $this->hasMany(Faq::Class, 'tractor_slug','tractor_slug')->take(5);  
    }
        public function QALast()
    {
        return $this->hasMany(Faq::Class, 'tractor_slug','tractor_slug')->orderBy('id', 'desc')->take(5);  
    }
    
}
