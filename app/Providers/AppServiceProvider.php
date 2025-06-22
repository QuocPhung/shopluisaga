<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Observers\ProductObserver;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Facades\View;
use App\Models\Banner;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gate::define('manage-products', fn($user) => $user->hasAnyRole(['admin', 'productMng']));
        Gate::define('manage-categories', fn($user) => $user->hasAnyRole(['admin', 'categoryMng']));
        Gate::define('manage-orders', fn($user) => $user->hasAnyRole(['admin', 'orderMng']));
        Gate::define('manage-banners', fn($user) => $user->hasAnyRole(['admin', 'bannerMng']));
        Gate::define('manage-users', fn($user) => $user->hasAnyRole(['admin', 'userMng']));
        Gate::define('view-dashboard', fn($user) => $user->hasAnyRole(['admin', 'productMng', 'categoryMng', 'orderMng', 'bannerMng', 'userMng']));
        Product::observe(ProductObserver::class);
        View::composer('layouts.partials.sidebar', function ($view) {
            $categories = Category::where('status', 1)->get();
            $view->with('categories', $categories);
        });
        View::composer('layouts.partials.banner', function ($view) {
            $banners = Banner::where('status', 1)->orderBy('position')->get();
            $view->with('banners', $banners);
        });
    }
    
}
