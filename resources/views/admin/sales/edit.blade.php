@extends('admin.layout')

@section('content')
<div class="max-w-3xl mx-auto bg-white p-6 rounded shadow">
    <h2 class="text-2xl font-bold mb-4">Cập nhật khuyến mãi</h2>
    <form action="{{ route('admin.sales.update', $sale->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-4">
            <label class="font-medium">Tên khuyến mãi</label>
            <input type="text" name="name" class="w-full border p-2 rounded" value="{{ old('name', $sale->name) }}" required>
        </div>

        <div class="grid grid-cols-2 gap-4 mb-4">
            <div>
                <label>Loại giảm</label>
                <select name="discount_type" class="w-full border p-2 rounded" required>
                    <option value="percent" {{ $sale->discount_type == 'percent' ? 'selected' : '' }}>Phần trăm (%)</option>
                    <option value="fixed" {{ $sale->discount_type == 'fixed' ? 'selected' : '' }}>Giảm cố định (VNĐ)</option>
                </select>
            </div>
            <div>
                <label>Giá trị giảm</label>
                <input type="number" name="discount_value" min="0" class="w-full border p-2 rounded" value="{{ $sale->discount_value }}" required>
            </div>
        </div>

        <div class="grid grid-cols-2 gap-4 mb-4">
            <div>
                <label>Bắt đầu</label>
                <input type="date" name="start_date" class="w-full border p-2 rounded" value="{{ $sale->start_date->format('Y-m-d') }}" required>
            </div>
            <div>
                <label>Kết thúc</label>
                <input type="date" name="end_date" class="w-full border p-2 rounded" value="{{ $sale->end_date->format('Y-m-d') }}" required>
            </div>
        </div>

        <div class="mb-4">
            <label>Trạng thái</label>
            <select name="status" class="w-full border p-2 rounded">
                <option value="1" {{ $sale->status ? 'selected' : '' }}>Hiển thị</option>
                <option value="0" {{ !$sale->status ? 'selected' : '' }}>Ẩn</option>
            </select>
        </div>

        <div class="mb-4">
            <label>Sản phẩm áp dụng</label>
            <div class="border p-2 rounded h-48 overflow-y-auto">
                @foreach($products as $product)
                    <label class="block">
                        <input type="checkbox" name="product_ids[]" value="{{ $product->id }}"
                            {{ in_array($product->id, $selectedProducts) ? 'checked' : '' }}>
                        {{ $product->name }} ({{ number_format($product->price) }}đ)
                    </label>
                @endforeach
            </div>
        </div>

        <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Cập nhật</button>
        <a href="{{ route('admin.sales.index') }}" class="ml-4 text-gray-600 hover:underline">Quay lại</a>
    </form>
</div>
@endsection
