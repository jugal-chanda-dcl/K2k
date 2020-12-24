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

// Route::resource('topic', 'TopicController')->middleware('roleauth');
// Route::resource('topic', 'TopicController')->middleware('roleauth');
// Route::get('/topic','TopicController@index')->middleware('roleauth')->name('topic.index');
// Route::get('/topic/create','TopicController@create')->middleware('roleauth')->name('topic.create');
// Route::post('/topic','TopicController@store')->middleware('roleauth')->name('topic.store');
Route::delete('/topic/{topic}','TopicController@destroy')->middleware('roleauth')->name('topic.destroy');
// Route::put('/topic/{topic}','TopicController@update')->middleware('roleauth')->name('topic.update');
// Route::get('/topic/{topic}','TopicController@show')->middleware('roleauth')->name('topic.show');
// Route::get('/topic/{topic}/edit','TopicController@edit')->middleware('roleauth')->name('topic.edit');

// Route::resource('learn', 'LearnController')->middleware('roleauth');

Route::get('/learn','LearnController@index')->middleware('roleauth')->name('learn.index');
Route::get('/learn/create/{subject}','LearnController@create')->middleware('roleauth')->name('learn.create');
Route::post('/learn/{subject}','LearnController@store')->middleware('roleauth')->name('learn.store');
Route::delete('/learn/{learn}','LearnController@destroy')->middleware('roleauth')->name('learn.destroy');

Route::get('/learn/{learn}/edit','LearnController@edit')->middleware('roleauth')->name('learn.edit');
Route::put('/learn/{learn}','LearnController@update')->middleware('roleauth')->name('learn.update');

Route::get('/learn/{learn}','LearnController@show')->middleware('roleauth')->name('learn.show');



Route::get('subject/{subject}/topics/','SubjectController@topics')->middleware('roleauth')->name('subject.topics');
Route::get('/topic/{topic}/learn','TopicController@learn')->middleware('roleauth')->name('topic.learn');

Route::resource('content', 'ContentController')->middleware('roleauth');
Route::get('teacher/resources', 'ResourceController@teacherResourceAll')->middleware('roleauth')->name('teacher.resource.all');
Route::get('teacher/resources/{resource}', 'ResourceController@teacherResourceSingle')->middleware('roleauth')->name('teacher.resource.single');
Route::resource('teacherProfile', 'TeacherProfileController')->middleware('roleauth');
Route::resource('studentProfile', 'StudentProfileController')->middleware('roleauth');
Route::resource('contentDeveloperProfile', 'ContentDeveloperProfileController')->middleware('roleauth');
// Route::get('student/subjects/','SubjectController@studentSubjectsAll')->middleware('roleauth')->name('student.subjects.all');

Route::get('/question/{learn}','QuestionController@create')->name('question.create')->middleware('roleauth');



// Route::resource('bid', 'BidContentController')->middleware('roleauth');
