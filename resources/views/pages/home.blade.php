@extends('layouts.app')

@section('title', 'Trang chủ')

@section('content')
    <h1 class="text-2xl font-bold mb-4">Sản phẩm nổi bật</h1>

    <div class="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-4 gap-4">
        @foreach ($products as $product)
            <div class="bg-white p-4 shadow rounded">
                @if ($product->image)
                    <img src="{{ asset('storage/' . $product->image) }}" class="w-full h-40 object-cover rounded mb-2">
                @endif
                <h3 class="font-semibold">{{ $product->name }}</h3>
                <div class="text-red-600 font-bold">{{ number_format($product->final_price) }} đ</div>
            </div>
        @endforeach
    </div>
@endsection
