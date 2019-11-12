<!doctype html>

<html lang="pt-br">
<head>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/consultorio.css') }}" rel="stylesheet">
    @section('title','Home')
    <title>Sistema Consultório - @yield('title')</title>
    <meta name="csrf-token" content=" {{ csrf_token() }}">
    <link rel="shortcut icon" href="{{asset('/img/medical-healthcare.png')}}" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container-fluid">
        @component('navbar',["current" => $current]);
        @endcomponent
        <main>
            @hasSection('body')
                @yield('body')
            @endif
        </main>
        @component('footer',["current" => $current]);
        @endcomponent
    </div>
    <script src="{{ asset('js/app.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/consultorio.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/jquery.mask.js') }}" type="text/javascript"></script>
</body>
</html>
