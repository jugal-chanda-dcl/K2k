<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subject;
use App\Topic;

class TopicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('topic.index',['topics'=>Topic::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('topic.create',['subjects'=>Subject::all()]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $validatedData = $request->validate([
          'name' => 'required|max:255',
          'subject' => 'required',
        ]);

        $topic = Topic::create([
          'name'=>$validatedData['name'],
          'subject_id'=> $validatedData['subject'],
        ]);
        return redirect()->route('topic.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('topic.edit',['topic'=>Topic::find($id),'subjects'=>Subject::all()]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $validatedData = $request->validate([
        'name' => 'required|max:255',
        'subject' => 'required',
      ]);

      $topic = Topic::find($id);
      $topic->name = $validatedData['name'];
      $topic->subject_id = $validatedData['subject'];
      $topic->save();
      return redirect()->route('topic.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Topic::destroy($id);
        return redirect()->route('topic.index');

    }
}
