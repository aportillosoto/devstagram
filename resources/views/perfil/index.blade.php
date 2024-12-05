@extends('layouts.app')

@section('titulo')
    Editar Perfil: {{auth()->user()->username}}
@endsection

@section('contenido')
    <div class="md:flex md:justify-center">
        <div class="md:w-1/2 bg-white shadow p-6">
            <form action="{{route('perfil.store')}}" method="POST" enctype="multipart/form-data" class="mt-10 md:mt-0">
                @csrf
                <div class="mb-5">
                    <label for="username" class="mb-2 block uppercase text-gray-500 font-bold">
                        Usuario
                    </label>
                    <input type="text" id="username" name="username" placeholder="Ingrese su nombre de usuario" 
                    class="border p-3 w-full rounded-lg 
                    @error('username') border-red-500 @enderror" 
                    value="{{auth()->user()->username}}" />
                    @error('username')
                        <p class="bg-red-500 text-white rounded-lg text-sm p-2 text-center">
                            {{$message}}
                        </p>
                    @enderror                    
                </div>  
                <div class="mb-5">
                    <label for="email" class="mb-2 block uppercase text-gray-500 font-bold">
                        Email
                    </label>
                    <input type="email" id="email" name="email" placeholder="Ingrese su correo" 
                    class="border p-3 w-full rounded-lg 
                    @error('email') border-red-500 @enderror" 
                    value="{{auth()->user()->email}}">
                    @error('email')
                        <p class="bg-red-500 text-white rounded-lg text-sm p-2 text-center">
                            {{$message}}
                        </p>
                    @enderror                                    
                </div>  
                <div class="mb-5">
                    <label for="current_password" class="mb-2 block uppercase text-gray-500 font-bold">
                        Password Actual
                    </label>
                    <input type="password" id="current_password" name="current_password" placeholder="Ingrese su contraseña actual" 
                    class="border p-3 w-full rounded-lg 
                    @error('current_password') border-red-500 @enderror"> 
                    @error('current_password')
                        <p class="bg-red-500 text-white rounded-lg text-sm p-2 text-center">
                            {{$message}}
                        </p>
                    @enderror                       
                </div> 
                <div class="mb-5">
                    <label for="password" class="mb-2 block uppercase text-gray-500 font-bold">
                        Nuevo Password
                    </label>
                    <input type="password" id="password" name="password" placeholder="Ingrese su nueva contraseña" 
                    class="border p-3 w-full rounded-lg 
                    @error('password') border-red-500 @enderror"> 
                    @error('password')
                        <p class="bg-red-500 text-white rounded-lg text-sm p-2 text-center">
                            {{$message}}
                        </p>
                    @enderror                      
                </div> 
                <div class="mb-5">
                    <label for="password_confirmation" class="mb-2 block uppercase text-gray-500 font-bold">
                        Repetir Nueva Password
                    </label>
                    <input type="password" id="password_confirmation" name="password_confirmation" placeholder="Ingrese nuevamente su nueva contraseña" 
                    class="border p-3 w-full rounded-lg">
                </div>                                           
                <div class="mb-5">
                    <label for="imagen" class="mb-2 block uppercase text-gray-500 font-bold">
                        Imagen Perfil
                    </label>
                    <input type="file" id="imagen" name="imagen"
                    class="border p-3 w-full rounded-lg" 
                    value="" accept=".jpg, .jpeg, .png" />
                </div>                                
                <input type="submit" value="Guardar Cambios"
                class="bg-sky-600 hover:bg-sky-700 transition-colors cursor-pointer 
                uppercase font-bold w-full p-3 text-white rounded-lg"> 
            </form>
        </div>
    </div>
@endsection