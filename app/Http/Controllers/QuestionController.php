<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Question;
use App\Option;
use App\Learn;
use App\User;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    // Used for retriving all question relatively on learning material for edit or view questions
    public function retrive(Learn $learn,User $user)
    {
      $question = $learn->question;
      $answer = $question->answers->where('user_id',$user->id)->first();
      if($answer != null)
      {
        return response()->json($answer->answer,200);
      }
      return response()->json($question->content,200);
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
    public function edit(Learn $learn)
    {
      return view('question.edit',['learn'=>$learn]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,Learn $learn)
    {
      $data = $request->all();
      $question = $learn->question;
      $question->content = json_encode($data);
      $question->save();
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
