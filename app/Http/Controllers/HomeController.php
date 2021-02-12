<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subject;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

      $distinctSubjects = Subject::distinct()->orderBy('name')->get(['name']);
      $distinctClass = Subject::distinct()->orderBy('class')->get(['class']);
      $subjects = Subject::all();
      $filters = ['subject'=> "",'class'=>""];
      if(isset($_GET['subject'])) {
        $subjects = $subjects->where('name',$_GET['subject']);
        $filters['subject'] = $_GET['subject'];
      }
      if(isset($_GET['class'])) {
        $subjects = $subjects->where('class',$_GET['class']);
        $filters['class'] = $_GET['class'];
      }

        return view('home',[
          'subjects'=>$subjects,
          'distinctSubjects'=>$distinctSubjects,
          'distinctClass' => $distinctClass,
          'filters' => $filters

        ]);
    }
    public function question()
    {

    }
}
