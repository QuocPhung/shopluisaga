<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chính - Kiểm Tra Auth</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body class="p-4">

    <div class="container">
        <h1 class="mb-4">🏠 Trang chính</h1>

        {{-- THÔNG BÁO SWEETALERT2 --}}
        @if(session('success'))
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Thành công!',
                text: '{{ session('success') }}',
                toast: true,
                position: 'top-end',
                timer: 2000,
                showConfirmButton: false
            });
        </script>
        @endif

        @if(session('error'))
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Thất bại!',
                text: '{{ session('error') }}',
                toast: true,
                position: 'top-end',
                timer: 2000,
                showConfirmButton: false
            });
        </script>
        @endif

        {{-- NẾU ĐÃ ĐĂNG NHẬP --}}
        @auth
            <div class="alert alert-success">
                Xin chào, <strong>{{ Auth::user()->name }}</strong>!<br>
                Email: {{ Auth::user()->email }}
            </div>

            <form action="{{ route('logout') }}" method="POST">
                @csrf
                <button type="submit" class="btn btn-danger">Đăng xuất</button>
            </form>
        @else
            <div class="alert alert-info">
                Bạn chưa đăng nhập.
            </div>

            <a href="{{ route('login') }}" class="btn btn-primary">Đăng nhập</a>
            <a href="{{ route('register') }}" class="btn btn-secondary">Đăng ký</a>
        @endauth
    </div>

</body>
</html>
