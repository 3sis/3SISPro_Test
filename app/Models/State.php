<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Country;

class State extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 't05901l04';
    protected $fillable = [
          'GMSMHStateId' ,
          'GMSMHCountryId' ,
          'GMSMHDesc1' ,
          'GMSMHDesc2' ,
          'GMSMHBiDesc' ,
          'GMSMHMarkForDeletion' ,
          'GMSMHUser' ,
          'GMSMHLastCreated' ,
          'GMSMHLastUpdated',
          'GMSMHDeletedAt' 
        ];

    protected $casts = [
            'GMCOHLastCreated'  => 'datetime:d/m/Y',
            'GMCOHLastUpdated'  => 'datetime:d/m/Y',
            'GMCOHDeletedAt'    => 'datetime:d/m/Y'
    ];


    public function fnCountry(){
        return $this->hasOne(Country::class,'GMCMHCountryId','GMSMHCountryId');
    }


}
