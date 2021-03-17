<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Question;
use App\Option;
use App\Learn;
use App\User;
use Session;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    // Used for retriving all question relatively on learning material for edit or view questions
    public function retrive(Question $question)
    {
      return response()->json($question,200);
    }

    public function updatePracticeLimit(Request $request,Question $question)
    {
      $question->practice_limit = $request['practice_limit'];
      $question->save();
      Session::flash('status',"Practice Limit Updated");
      return redirect()->back();
    }

    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Learn $learn)
    {
        return view('question.create',['learn'=>$learn]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $data = $request->all();
      $learnId = $data['learnId'];

      foreach ($data as $key=>$d)
      {
        if($key != "learnId")
        {
          $storeData[$key] = $d;
        }
      }
      $question = new Question;
      $question->learn_id = $learnId;
      $question->content = json_encode($storeData);
      $question->save();

      return response()->json($data,200);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Learn $learn)
    {
        return view('question.show',['learn'=>$learn]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
      return view('question.edit',['question'=>$question]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,Question $question)
    {
      $data = $request->all();
      $question->content = json_encode($data);
      $question->save();
      $data = array();
      $data['status'] = "Question edit successfully";
      return response()->json($data,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
    }
}
