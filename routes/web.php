<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\SaleController;
use App\Http\Controllers\Admin\BannerController;

Route::get('/', function () {
    return view('layouts.app');
})->name('layout');

// Hiển thị form login/register
Route::get('/login', [AuthController::class, 'showLogin'])->name('login')->middleware('guest');
Route::get('/register', [AuthController::class, 'showRegister'])->name('register')->middleware('guest');

// Xử lý login/register
Route::post('/login', [AuthController::class, 'login'])->name('login.submit');
Route::post('/register', [AuthController::class, 'register'])->name('register.submit')->middleware('guest');

// Logout
Route::post('/logout', [AuthController::class, 'logout'])->name('logout')->middleware('auth');


Route::prefix('admin')->name('admin.')->middleware(['auth', 'role:admin,productMng,categoryMng,orderMng,bannerMng,userMng'])->group(function () {

    Route::get('/', [AdminController::class, 'index'])->name('dashboard');

    Route::resource('categories', \App\Http\Controllers\Admin\CategoryController::class);
    Route::resource('products', \App\Http\Controllers\Admin\ProductController::class);
    Route::delete('/products/images/{image}', [ProductController::class, 'deleteImage'])->name('products.images.delete');
    Route::resource('sales', \App\Http\Controllers\Admin\SaleController::class);
    Route::resource('banners', \App\Http\Controllers\Admin\BannerController::class);

});