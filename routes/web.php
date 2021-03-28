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


Route::get('/login/admin', 'Auth\LoginController@showAdminLoginForm')->name('admin.login');
Route::post('/login/admin', 'Auth\LoginController@adminLogin');
Route::post('/register/admin', 'Auth\RegisterController@createAdmin');


Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => 'auth:admin'], function () {
    Route::get('/register/admin', 'Auth\RegisterController@showAdminRegisterForm')->name('admin.register');
    Route::resource('role', 'RoleController');
    Route::resource('resource', 'ResourceController');
    Route::view('/admin', 'admin');
});

Route::resource('/subject', 'SubjectController')->middleware('roleauth');

// For show in student panel
Route::get('/subjects/subscribed','SubjectController@subscribed')->middleware('roleauth')->name('subjects.subscibed');


Route::delete('/topic/{topic}','TopicController@destroy')->middleware('roleauth')->name('topic.destroy');


// This route is for subscribe or unsubscribe
Route::get('/subscribe/{subject}','SubjectController@subscribe')->middleware('roleauth')->name('subject.subscribe');
Route::get('/unsubscribe/{subject}','SubjectController@unsubscribe')->middleware('roleauth')->name('subject.unsubscribe');
// Route::get('/unsubscribe/{subject}','SubjectController@unsubscribe')->middleware('roleauth')->name('subject.unsubscribe');


Route::get('/learn','LearnController@index')->middleware('roleauth')->name('learn.index');
Route::get('/learn/create/{subject}','LearnController@create')->middleware('roleauth')->name('learn.create');
Route::post('/learn/{subject}','LearnController@store')->middleware('roleauth')->name('learn.store');
Route::delete('/learn/{learn}','LearnController@destroy')->middleware('roleauth')->name('learn.destroy');

Route::get('/learn/{learn}/edit','LearnController@edit')->middleware('roleauth')->name('learn.edit');
Route::put('/learn/{learn}','LearnController@update')->middleware('roleauth')->name('learn.update');

Route::get('/learn/{learn}','LearnController@show')->middleware('roleauth')->name('learn.show');



Route::get('/subject/{subject}/topics','SubjectController@topics')->middleware('roleauth')->name('subject.topics');
Route::get('/subject/{subject}/subscriptions','SubjectController@subscriptions')->middleware('roleauth')->name('subject.subscriptions');
Route::get('/subject/{subject}/subscriptions/{user}/delete','SubjectController@deleteSubscription')->middleware('roleauth')->name('subject.delete_subscription');
Route::get('/subject/{subject}/subscriptions/{user}/aprove','SubjectController@aproveSubscription')->middleware('roleauth')->name('subject.aprove_subscription');

Route::get('/topic/{topic}/learn','TopicController@learn')->middleware('roleauth')->name('topic.learn');

Route::resource('/content', 'ContentController')->middleware('roleauth');
Route::get('/teacher/resources', 'ResourceController@teacherResourceAll')->middleware('roleauth')->name('teacher.resource.all');
Route::get('/teacher/resources/{resource}', 'ResourceController@teacherResourceSingle')->middleware('roleauth')->name('teacher.resource.single');
Route::resource('/teacherProfile', 'TeacherProfileController')->middleware('roleauth');
Route::resource('/studentProfile', 'StudentProfileController')->middleware('roleauth');
Route::resource('/contentDeveloperProfile', 'ContentDeveloperProfileController')->middleware('roleauth');
// Route::get('student/subjects/','SubjectController@studentSubjectsAll')->middleware('roleauth')->name('student.subjects.all');

Route::get('/question/{learn}/create','QuestionController@create')->name('question.create')->middleware('roleauth');
Route::get('/question/{question}/edit','QuestionController@edit')->name('question.edit')->middleware('roleauth');
Route::post('/question/{question}/updaatePracticeLimit','QuestionController@updatePracticeLimit')->name('question.update_practice_limit')->middleware('roleauth');
// Route::get('/question/{question}','QuestionController@show')->name('question.show')->middleware('roleauth');
// Route::get('/learn/{learn}/questions','QuestionController@show')->name('learn.questions')->middleware('roleauth');
Route::get('/learn/{learn}/review/answers','AnswerController@review_answers')->name('answer.review_answers')->middleware('roleauth');
Route::get('/answers/{answer}','AnswerController@answer_scripts')->name('answer.script')->middleware('roleauth');
Route::get('/answers/submit/question/{question}/view','AnswerController@submitView')->name('answer.submit_view')->middleware('roleauth');

Route::get('/practices/subjects','PracticeController@subjects')->name('practices.subjects')->middleware('roleauth');
Route::get('/practices/{subject}/topics','PracticeController@topics')->name('practices.topics')->middleware('roleauth');

Route::get('/file/{file}/delete','FileController@destroy')->name('file.delete')->middleware('roleauth');
Route::get('/show-pdf/{file}','FileController@show')->name('file.show');
// Route::resource('bid', 'BidContentController')->middleware('roleauth');

Route::get('rating/create/subject/{subject}','RatingController@create')->name('rating.create')->middleware('roleauth');
Route::post('rating/create/subject/{subject}','RatingController@store')->name('rating.store')->middleware('roleauth');
