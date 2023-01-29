<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class theme_setting extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'theme_setting';
    protected $fillable = [
        'type',
        'theme'
    ];
}
