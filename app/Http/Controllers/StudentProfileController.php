<?php

namespace App\Http\Controllers;

use App\StudentProfile;
use Illuminate\Http\Request;
use Auth;
use Session;

class StudentProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('studentprofile.profile',['user'=>Auth::user()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('studentprofile.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = Auth::user();
        if ($user->teacherProfile)
        {
          Session::flash('status',"Alread profile created. You can update your profile");
          return redirect()->back();
        }
        $validatedData = $request->validate([
          'age' => 'required',
          'class' => 'required',
          'institute' => 'required',
        ]);
        $studentProfile = StudentProfile::create([
          'user_id' => $user->id,
          'age' => $validatedData['age'],
          'class' => $validatedData['class'],
          'institute' => $validatedData['institute'],
        ]);
        return redirect()->route('studentProfile.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\StudentProfile  $studentProfile
     * @return \Illuminate\Http\Response
     */
    public function show(StudentProfile $studentProfile)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\StudentProfile  $studentProfile
     * @return \Illuminate\Http\Response
     */
    public function edit(StudentProfile $studentProfile)
    {
        return view('studentprofile.edit',['user'=>Auth::user()]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\StudentProfile  $studentProfile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, StudentProfile $studentProfile)
    {
      $user = Auth::user();
      if ($user->teacherProfile)
      {
        Session::flash('status',"Alread profile created. You can update your profile");
        return redirect()->back();
      }
      $validatedData = $request->validate([
        'age' => 'required',
        'class' => 'required',
        'institute' => 'required',
      ]);
      $studentProfile = $user->studentProfile;
      $studentProfile->age = $validatedData['age'];
      $studentProfile->class = $validatedData['class'];
      $studentProfile->institute = $validatedData['institute'];
      $studentProfile->save();
      return redirect()->route('studentProfile.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\StudentProfile  $studentProfile
     * @return \Illuminate\Http\Response
     */
    public function destroy(StudentProfile $studentProfile)
    {
        //
    }
}
