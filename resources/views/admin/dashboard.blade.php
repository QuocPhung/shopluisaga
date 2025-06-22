<!-- resources/views/admin/index.blade.php -->
@extends('admin.layout')

@section('title', 'Bảng điều khiển')

@section('content')
    <h1 class="text-2xl font-bold mb-4">Chào mừng {{ auth()->user()->name }} đến trang quản trị!</h1>

    <div class="grid grid-cols-2 md:grid-cols-3 gap-4">
        <a href="{{ route('admin.categories.index') }}" class="block p-4 bg-white shadow rounded hover:bg-gray-100">
            📁 Quản lý Danh mục
        </a>
        <a href="{{ route('admin.products.index') }}" class="block p-4 bg-white shadow rounded hover:bg-gray-100">
            🖼 Quản lý Sản phẩm
        </a>
        <a href="{{ route('admin.sales.index') }}" class="block p-4 bg-white shadow rounded hover:bg-gray-100">
            🎁 Quản lý Khuyến Mãi
        </a>
        <a href="{{ route('admin.banners.index') }}" class="block p-4 bg-white shadow rounded hover:bg-gray-100">
            🖼 Quản lý Banner
        </a>
        <!-- Có thể thêm tiếp -->
    </div>
@endsection
