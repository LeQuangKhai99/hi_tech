<?php
namespace App\Traits;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

trait StorageImageTrait{
    public function StorageImage($request, $field_name, $forder_name){
        if ($request->hasFile($field_name)){
            $file = $request->$field_name;
            $filenameHash = Str::random(20).'.'.$file->getClientOriginalExtension();
            $path = $request->file($field_name)->storeAs('public/photos/'.$forder_name.'/'.auth()->id(), $filenameHash);
            $file_path = Storage::url($path);
            return $file_path;
        }
        else
            return null;
    }

    public function StorageMultipleImage($file, $forder_name){
        $filenameHash = Str::random(20).'.'.$file->getClientOriginalExtension();
        $path = $file->storeAs('public/photos/'.$forder_name.'/'.auth()->id(), $filenameHash);
        return Storage::url($path);
    }
}
