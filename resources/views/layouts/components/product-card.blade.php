<div class="bg-white p-3 rounded shadow hover:shadow-md transition">
    <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" class="w-full h-40 object-cover rounded mb-2">
    <h3 class="text-sm font-semibold">{{ $product->name }}</h3>
    <div class="text-red-500 font-bold">{{ number_format($product->final_price) }}đ</div>
</div>
