<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



Route::get('/getapi',function(){


$url="https://api.covid19india.org/data.json";

$data=file_get_contents($url);


$d=json_decode($data,true);

$act=$d['statewise']['1']['active'];

$con=$d['statewise']['1']['confirmed'];
$death=$d['statewise']['1']['deaths'];
$recover=$d['statewise']['1']['recovered'];
$dt=$d['statewise']['1']['lastupdatedtime'];

return view('covid',['data'=>[$act,$con,$death,$recover,$dt]]);


});


Route::get('laravelapi','ControllerApi@index');