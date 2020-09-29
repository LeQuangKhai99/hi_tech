<?php

namespace App\Http\Middleware;

use Closure;

class CheckLogin
{
    public function handle($request, Closure $next)
    {
        if (auth()->user() == null){
            return  redirect()->route('auth.login');
        }
        return $next($request);
    }
}
