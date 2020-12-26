<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Question;
use App\Option;
use App\Learn;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
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
      $question = new Question;
      $question->learn_id = $request['learn_id'];
      $question->question = $request['question'];
      $question->type = $request['question_type'];
      $question->save();
      if($question->type == "multiple_choice" || $question->type == "check_box"){
        $options = $request['options'];
        foreach ($options as $option) {
          $option_db = new Option;
          $option_db->question_id = $question->id;
          $option_db->value = $option;
          $option_db->save();
        }
      }
      return response()->json($request,200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Learn $learn)
    {
        return view('question.show',['questions'=>$learn->questions]);
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
    public function update(Request $request)
    {
      $learn_id = $request['learn_id'];
      if($request['question_id'])
      {
        $question = Question::find($request['question_id']);

        $question->question = $request['question'];
        $question->type = $request['question_type'];
        $question->save();
        $options = $question->options;

        foreach ($options as $option) {
          $option->delete();
        }
        if($question->type == "multiple_choice" || $question->type == "checkbox")
        {
          $options = $request['options'];
          foreach ($options as $option) {
            $option_db = new Option;
            $option_db->question_id = $question->id;
            $option_db->value = $option;
            $option_db->save();
          }
        }
      }
      else{
        $question = new Question;
        $question->learn_id = $request['learn_id'];
        $question->question = $request['question'];
        $question->type = $request['question_type'];
        $question->save();
        if($question->type == "multiple_choice" || $question->type == "check_box"){
          $options = $request['options'];
          foreach ($options as $option) {
            $option_db = new Option;
            $option_db->question_id = $question->id;
            $option_db->value = $option;
            $option_db->save();
          }
        }

      }
      return response()->json($request,200);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
      $question_id = $request['question_id'];
      Question::destroy($question_id);
      return response()->json("deleted",200);
    }
}
