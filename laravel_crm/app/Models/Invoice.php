<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'customer_id',
        'term',
        'product_code',
        'key_phrase',
        'amount_paid',
        'payment_method',
        'pay_date',
        'description',
        'comment',
        'status',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'pay_date' => 'datetime',
    ];

    public function customer_relationship()
    {
        return $this->belongsTo(\App\Models\Customer::class, 'customer_id');
    }

    public function product_relationship()
    {
        return $this->belongsTo(\App\Models\Product::class, 'product_code');
    }
}
