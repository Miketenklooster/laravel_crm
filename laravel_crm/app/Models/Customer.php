<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Customer extends Model
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'company_name',
        'name',
        'gender',
        'email',
        'phone_number',
        'city',
        'street',
        'house_number',
        'postal_code',
        'product_code',
    ];

    public function product_relationship()
    {
        return $this->belongsTo(\App\Models\Product::class, 'product_code');
    }
}
