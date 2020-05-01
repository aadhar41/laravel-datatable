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

Route::get('/data', 'DatatablesController@index')->name('data.index');
Route::get('/datatable', 'DatatablesController@datatable')->name('data.datatables');
Route::get('/data/delete/{id}', 'DatatablesController@destroy')->name('data.delete');
