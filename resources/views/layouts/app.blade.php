<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>DevStragram - @yield('titulo')</title>
    @vite('resources/css/app.css','resources/js/app.css')
</head>
<body class="bg-gray-100">
    <header class="p-5 border-b bg-white shadow"> 
        <div class="container mx-auto">
            <h1 class="text-3xl font-black">DevStagram</h1>
        </div>
    </header>
</body>

</html>