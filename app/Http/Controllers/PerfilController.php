<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Intervention\Image\Facades\Image;

class PerfilController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(){
        return view('perfil.index');
    }
    public function store(Request $request){
        //Modificar el request
        $request->request->add(['username'=>Str::slug($request->username)]);        
        $this->validate($request,[
            'username' => ['required','unique:users,username,'.auth()->user()->id,'min:3','max:20',
            'not_in:editar-perfil'],
            'email' => ['required','unique:users,email,'.auth()->user()->id,'email','max:60'],                        
        ]);
        $usuario = User::find(auth()->user()->id);
        // Verificar si la contraseña actual es correcta
        if(!Hash::check($request->current_password, auth()->user()->password)) {
            return back()->withErrors(['current_password' => 'La contraseña actual no coincide'])->withInput();
        }     
        // Si hay una contraseña nueva, validar y actualizarla
        if($request->filled('password')){
            $request->validate([
                'password' => 'required|confirmed|min:6'
            ]);
            $usuario->password = Hash::make($request->password);
        }         
        if($request->imagen){
            $imagen = $request->file('imagen');

            $nombreImagen = Str::uuid().".".$imagen->extension();
            $imagenServidor = Image::make($imagen);
            $imagenServidor->fit(1000,1000);
    
            $imagenPath = public_path('perfiles').'/'.$nombreImagen;
            $imagenServidor->save($imagenPath);
        }
        
        $usuario->username = $request->username;
        $usuario->email = $request->email ?? auth()->user()->email;
        $usuario->imagen = $nombreImagen ?? auth()->user()->imagen ?? null;
        
        $usuario->save();
        //redireccionar
        return redirect()->route('posts.index',$usuario->username);
    }
}
