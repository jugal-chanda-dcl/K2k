<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subject;
use Auth;
use App\User;
use Session;

class SubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function subscribe(Subject $subject)
    {
      $user = Auth::user();
      $user->subscribedSubjects()->attach($subject->id,['is_aproved'=>$subject->auto_aprove]);
      return redirect()->route('home');
    }

    public function unsubscribe(Subject $subject)
    {
      $user = Auth::user();
      $user->subscribedSubjects()->detach($subject->id);
      return redirect()->route('home');
    }

    public function subscriptions(Subject $subject)
    {
      return view('subjects.subscriptions',[
        'subject' => $subject,
        'users' => $subject->users()->orderBy('is_aproved')->get()
      ]);
    }
    public function deleteSubscription(Subject $subject,User $user)
    {
      $user->subscribedSubjects()->detach($subject->id);
      return redirect()->back();
    }

    public function aproveSubscription(Subject $subject,User $user)
    {
      $subject->users()->updateExistingPivot($user->id,['is_aproved'=>true]);
      return redirect()->back();
    }

    public function toggleAprove(Subject $subject)
    {
      $subject->auto_aprove = !$subject->auto_aprove;
      $subject->save();
      return response()->json($subject->auto_aprove,200);
    }

    public function subscribed()
    {
      $subjects = Auth::user()->subscribedSubjects;
      return view('subjects.index',['subjects'=>$subjects]);
    }

    public function index()
    {
        $subjects = Auth::user()->createdSubjects;
        return view('subjects.index',['subjects'=>$subjects]);
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
          'name' => 'required|max:255',
          'class' => 'required',
          'auto_aprove' => 'required'
        ]);
        $subjects = Subject::create([
            'name' => strtolower($validatedData['name']),
            'class' => $validatedData['class'],
            'user_id' => Auth::user()->id,
            'auto_aprove' => $validatedData['auto_aprove']
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
        'name' => 'required|max:255',
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
