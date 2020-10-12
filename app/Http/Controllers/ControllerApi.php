<?php

namespace App\Http\Controllers;
use App\task;
use Illuminate\Http\Request;

class ControllerApi extends Controller
{
    public function index()
    {
    	return task::all();
    }
}
