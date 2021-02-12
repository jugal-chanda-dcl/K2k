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
        if ($user->studentProfile)
        {
          Session::flash('status',"Already profile created. You can update your profile");
          return redirect()->back();
        }
        $validatedData = $request->validate([
          'class' => 'required',
          'institute' => 'required',
          'study_focus' => 'required',
          'group' => 'required',
          'avatar' => 'required|image'
        ]);
        $avatar = $request->avatar;
        $avatar_new_name = time().$avatar->getClientOriginalName();
        $avatar->move('upload/avatars',$avatar_new_name);
        $studentProfile = StudentProfile::create([
          'user_id' => $user->id,
          'class' => $validatedData['class'],
          'institute' => $validatedData['institute'],
          'study_focus' => $validatedData['study_focus'],
          'group' => $validatedData['group'],
          'avatar' => 'upload/avatars/'.$avatar_new_name,
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
      $validatedData = $request->validate([
        'class' => 'required',
        'institute' => 'required',
        'study_focus' => 'required',
        'group' => 'required',
      ]);
      $studentProfile = $user->studentProfile;
      $studentProfile->class = $validatedData['class'];
      $studentProfile->institute = $validatedData['institute'];
      $studentProfile->study_focus = $validatedData['study_focus'];
      $studentProfile->group = $validatedData['group'];

      if($request->avatar){
        $avatar = $request->avatar;
        $avatar_new_name = time().$avatar->getClientOriginalName();
        $avatar->move('upload/avatars',$avatar_new_name);
        $studentProfile->avatar = 'upload/avatars/'.$avatar_new_name;
      }

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
