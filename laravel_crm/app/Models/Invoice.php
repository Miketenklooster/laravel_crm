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
}
