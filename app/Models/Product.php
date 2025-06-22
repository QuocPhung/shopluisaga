<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = [
        'code', 'name', 'description', 'price',
        'category_id', 'status'
    ];    

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function images()
    {
        return $this->hasMany(ProductImage::class);
    }
    public function thumbnail()
    {
        return $this->hasOne(ProductImage::class)->where('is_thumbnail', 1);
    }
    public function sales()
    {
        return $this->belongsToMany(Sale::class);
    }

    public function attributes()
    {
        return $this->hasMany(ProductAttribute::class);
    }

    public function getActiveSale()
    {
        return $this->sales()
            ->where(function ($query) {
                $now = now();
                $query->whereNull('starts_at')->orWhere('starts_at', '<=', $now);
            })
            ->where(function ($query) {
                $now = now();
                $query->whereNull('ends_at')->orWhere('ends_at', '>=', $now);
            })
            ->orderByDesc('discount_percent')
            ->first();
    }
    public function getDiscountTextAttribute()
    {
        $sale = $this->sales()->where('status', 1)->first();

        if (!$sale) return null;

        return $sale->discount_type === 'percent'
        ? "-{$sale->discount_value}%"
        : '-' . number_format($sale->discount_value) . 'đ';   
    }


    public function getFinalPriceAttribute()
    {
        $sale = $this->sales()
            ->where('status', 1)
            ->orderByDesc('discount_value') // ưu tiên sale có giảm giá cao nhất
            ->first();

        if (!$sale) return $this->price;

        return match ($sale->discount_type) {
            'percent' => max($this->price - ($this->price * $sale->discount_value / 100), 0),
            'fixed'   => max($this->price - $sale->discount_value, 0),
            default   => $this->price,
        };        
    }

}
