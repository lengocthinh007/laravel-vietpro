<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\category;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {


    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $data['cate'] = category::all();
        view()->share($data);
    }
}
