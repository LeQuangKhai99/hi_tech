<?php

namespace App\Http\Controllers;

use App\Exports\TestExport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ExportController extends Controller
{
    public function export(){
        return Excel::download(new TestExport(), 'abc.xlsx');
    }
}
