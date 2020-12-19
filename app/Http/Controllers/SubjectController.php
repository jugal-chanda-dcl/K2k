<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subject;

class SubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('subjects.index',['subjects'=>Subject::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('subjects.create');
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
          'name' => 'required|unique:subjects|max:255',
          'class' => 'required',
        ]);
        $subjects = Subject::create([
            'name' => $validatedData['name'],
            'class' => $validatedData['class'],
        ]);

        return redirect()->route('subject.index');
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
        return view('subjects.edit',['subject'=>Subject::find($id)]);
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
        'name' => 'required|unique:subjects|max:255',
        'class' => 'required',
      ]);
      $subject = Subject::find($id);
      $subject->name = $validatedData['name'];
      $subject->class = $validatedData['class'];
      $subject->save();
      return redirect()->route('subject.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      Subject::destroy($id);
      return redirect()->back();
    }

    public function topics($id)
    {
      $subject = Subject::find($id);
      return view('subjects.topics',['topics'=> $subject->topics,'subject'=>$subject]);
    }

    // public function studentSubjectsAll()
    // {
    //   return view('subjetcs.studentSubjects',['subjects'=>Subject::all()]);
    // }
}
