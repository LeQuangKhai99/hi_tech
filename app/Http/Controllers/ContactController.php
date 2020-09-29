<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Http\Requests\AddcontactRequest;


class ContactController extends Controller
{
    private Contact $contact;
    public function __construct(Contact $contact){
        $this->contact = $contact;
    }
    public function index(){
        $contacts = $this->contact->whereNull('deleted_at')->latest()->paginate(5);

        return view('admin.contact.index', [
            'contacts'=>$contacts,
            'page'=>'contact'
        ]);

    }

    public function view($id){
        $contact = $this->contact->find($id);

        return view('admin.contact.view',[
            'contact'=>$contact,
            'page'=>'contact'

        ]);
    }

    public function delete($id){
        try {
            $contact = $this->contact->find($id);
            $contact->update([
                'deleted_at'=>date('Y-m-d H:i:s')
            ]);
            return response()->json([
                'code'=>'200',
                'mess'=>'success'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'code'=>'404',
                'mess'=>'err'
            ]);
        }
    }

    public function trash(){
        $contact = $this->contact->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.contact.trash', ['contacts'=>$contact,
            'page'=>'contact']);
    }

    public function restore($id){
        try {
            $contact = $this->contact->find($id);
            $contact->update([
                'deleted_at'=>null
            ]);
            return response()->json([
                'code'=>'200',
                'mess'=>'success'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'code'=>'404',
                'mess'=>'err'
            ]);
        }
    }

    public function forceDelete($id){
        try {
            $contact = $this->contact->find($id);
            $contact->delete();
            return response()->json([
                'code'=>'200',
                'mess'=>'success'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'code'=>'404',
                'mess'=>'err'
            ]);
        }
    }
}
