<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ config('app.name', 'PC Store') }}</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-50 text-gray-800">
<div class="bg-red-500 text-white p-4 rounded">
    Nếu bạn thấy hộp màu đỏ này → Tailwind đang hoạt động
</div>


    {{-- Header --}}
    @include('layouts.partials.header')

    <div class="min-h-screen flex flex-col md:flex-row">

        {{-- Sidebar (Category) --}}
        @include('layouts.partials.sidebar')

        {{-- Main Content --}}
        <main class="flex-1 p-4">
            @yield('content')
        </main>
    </div>

    {{-- Footer --}}
    @include('layouts.partials.footer')

</body>
</html>
