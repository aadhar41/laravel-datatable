<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes; //add this line

class Note extends Model
{
    //
    use SoftDeletes; //add this line
}
