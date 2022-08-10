<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Brand extends Model
{
    use SoftDeletes;
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'brands';

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
    protected $fillable = ['name'];

    public function tractor()
    {
        return $this->hasMany(Tractor::class, 'brand_id','id')->take(8);
    }
    public function tractorimages()
{
    return $this->hasMany(TractorImageModel::Class, 'Tractors_Id','Id')->take(3);  
}
    
}
