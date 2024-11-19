<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <title>DevStragram-@yield('titulo')</title>        
        @vite('resources/css/app.css')
        @vite('resources/js/app.js')
    </head>
    <body class="bg-gray-100">
       <header class="p-5 border-b bg-white shadow">
        <div class="container mx-auto flex justify-between items-center">
            <h1 class="text-3xl font-black">DevStragram</h1>
            <nav class="flex gap-2 items-center">
                <a class="font-bold uppercase text-gray-600 text-sm"href="#">Login</a>
                <a class="font-bold uppercase text-gray-600 text-sm"href="#">Crear Cuenta</a>
            </nav>
        </div>
    </header> 
    <main>
        <h2>
            @yield('titulo')
        </h2>
        @yield('contenido')
    </main>
    <footer>
    </footer>
    </body>
</html>
