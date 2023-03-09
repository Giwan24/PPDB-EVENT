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

//route tampilan awal web
Route::get('/','BannerController@index');

//route tampilan awal web
Route::get('/terdekat','BannerController@categorya');
Route::get('/terjauh','BannerController@categoryb');

//route tampilan ketika klik sebuah event
Route::get('event/{event_id}','EventController@detail');

//route fitur search
Route::get('/cari','BannerController@cari');

//route fitur search di dashboard
Route::get('/admin/cariadmin','HomeController@cari');

//route admin
Route::get('/admin','HomeController@Home');
Route::get('/admin/tambah','HomeController@tambah');
Route::post('/admin/store','HomeController@store');
Route::get('/admin/edit/{event_id}','HomeController@edit');
Route::post('/admin/update','HomeController@update');
Route::get('/admin/hapus/{event_id}','HomeController@hapus');


Auth::routes();
Route::get('/admin', [App\Http\Controllers\HomeController::class, 'index'])->name('admin');
Auth::routes();
Route::get('/admin', [App\Http\Controllers\HomeController::class, 'index'])->name('admin');
Route::get('logout', 'HomeController@logout')->name('logout');