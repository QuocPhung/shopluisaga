<?php

namespace App\Services;

use App\Models\Product;

class ProductImageService
{
    public static function uploadImages(Product $product, array $images, bool $setThumbnail = false, string $type = 'mo-ta')
    {
        foreach ($images as $index => $image) {
            if (!$image->isValid()) continue;

            $path = $image->store('products', 'public');

            $product->images()->create([
                'image' => $path,                       // Lưu đúng tên cột image (đừng nhầm sang path)
                'type' => $type,                        // mo-ta, ky-thuat, thuc-te,...
                'is_thumbnail' => $setThumbnail && $index === 0,
                'sort_order' => $index,
            ]);
        }
    }
}
