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

use App\Http\Controllers\RoleController;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\TopicController;
use App\Http\Controllers\LearnController;
use App\Http\Controllers\PracticeController ;


Route::get('/', function () {
    return view('welcome');
});

Auth::routes();


Route::get('/login/admin', 'Auth\LoginController@showAdminLoginForm');
Route::get('/register/admin', 'Auth\RegisterController@showAdminRegisterForm');

Route::post('/login/admin', 'Auth\LoginController@adminLogin');
Route::post('/register/admin', 'Auth\RegisterController@createAdmin');


Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => 'auth:admin'], function () {
    Route::resource('role', 'RoleController');
    Route::resource('resource', 'ResourceController');
    Route::view('/admin', 'admin');
});

Route::resource('subject', 'SubjectController')->middleware('roleauth');
Route::resource('topic', 'TopicController')->middleware('roleauth');
Route::get('subject/{subject}/topics/','SubjectController@topics')->middleware('roleauth')->name('subject.topics');
Route::resource('learn', 'LearnController')->middleware('roleauth');
Route::resource('content', 'ContentController')->middleware('roleauth');

// Route::group(['middleware' => 'roleauth'], function () {
//     Route::resource('role', 'RoleController');
//     // Route::view('/admin', 'admin');
// });

// Route::group(['middleware' => 'roleauth'], function () {
//     Route::resource('role', 'RoleController');
//     Route::view('/admin', 'admin');
// });
