<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use App\Models\Comentario;
use Illuminate\Http\Request;

class ComentarioController extends Controller
{
    public function store(Request $request, User $user, Post $post){
        //validar
        $this->validate($request,[
            'comentario'=>'required|max:255',
        ]);    
        //almacenar resultado
        Comentario::create([
            'user_id'=>auth()->user()->id,
            'post_id'=>$post->id,  //recibir el id del post del request
            'comentario'=>$request->comentario,         
        ]);
        //redireccionar al post
        return back()->with('mensaje', 'Comentario Realizado Correctamente');
    }

}
