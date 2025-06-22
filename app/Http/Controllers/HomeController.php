<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $categories = Category::where('status', 1)->get();
        $banners = Banner::where('status', 1)->orderBy('position')->get();
        $products = Product::with('thumbnail', 'sales')->latest()->take(8)->get();

        return view('pages.home', compact('categories', 'banners', 'products'));
    }

}
