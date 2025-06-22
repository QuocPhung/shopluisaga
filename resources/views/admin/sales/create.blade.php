@extends('admin.layout')

@section('content')
<div class="max-w-3xl mx-auto bg-white p-6 rounded shadow">
    <h2 class="text-2xl font-bold mb-4">Thêm khuyến mãi</h2>
    <form action="{{ route('admin.sales.store') }}" method="POST">
        @csrf

        {{-- Tên khuyến mãi --}}
        <div class="mb-4">
            <label class="font-medium">Tên khuyến mãi</label>
            <input type="text" name="name" class="w-full border p-2 rounded" required>
        </div>

        {{-- Loại và giá trị --}}
        <div class="grid grid-cols-2 gap-4 mb-4">
            <div>
                <label>Loại giảm</label>
                <select name="discount_type" class="w-full border p-2 rounded" required>
                    <option value="percent">Phần trăm (%)</option>
                    <option value="fixed">Giảm cố định (VNĐ)</option>
                </select>
            </div>
            <div>
                <label>Giá trị giảm</label>
                <input type="number" name="discount_value" min="0" class="w-full border p-2 rounded" required>
            </div>
        </div>

        {{-- Thời gian --}}
        <div class="grid grid-cols-2 gap-4 mb-4">
            <div>
                <label>Bắt đầu</label>
                <input type="date" name="start_date" class="w-full border p-2 rounded" required>
            </div>
            <div>
                <label>Kết thúc</label>
                <input type="date" name="end_date" class="w-full border p-2 rounded" required>
            </div>
        </div>

        {{-- Trạng thái --}}
        <div class="mb-4">
            <label>Trạng thái</label>
            <select name="status" class="w-full border p-2 rounded">
                <option value="1">Hiển thị</option>
                <option value="0">Ẩn</option>
            </select>
        </div>

        {{-- Chọn sản phẩm --}}
        <div class="mb-4">
            <label>Sản phẩm áp dụng</label>
            <div class="border p-2 rounded h-48 overflow-y-auto">
                @foreach($products as $product)
                    <label class="block">
                        <input type="checkbox" name="product_ids[]" value="{{ $product->id }}">
                        {{ $product->name }} ({{ number_format($product->price) }}đ)
                    </label>
                @endforeach
            </div>
        </div>

        <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Tạo</button>
        <a href="{{ route('admin.sales.index') }}" class="ml-4 text-gray-600 hover:underline">Quay lại</a>
    </form>
</div>
@endsection
