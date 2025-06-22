<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'discount_type', 'discount_value', 'start_date', 'end_date', 'status'];

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }
    protected $casts = [
        'start_date' => 'datetime',
        'end_date' => 'datetime',
    ];
    
}
