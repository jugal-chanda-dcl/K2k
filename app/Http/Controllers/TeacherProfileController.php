<?php

namespace App\Http\Controllers;

use App\TeacherProfile;
use Illuminate\Http\Request;
use Auth;
use Session;
class TeacherProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('teacherprofile.profile',['user'=>Auth::user()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('teacherprofile.create');
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
        Session::flash('status',"Already profile created. You can update your profile");
        return redirect()->back();
      }
      $validatedData = $request->validate([
        'experience' => 'required',
      ]);
      // dd($validatedData['content']);
      $experience = $request->input('experience');
      $dom = new \DomDocument();
      $dom->loadHtml($experience, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
      $images = $dom->getElementsByTagName('img');

      foreach($images as $k => $img){
        $data = $img->getAttribute('src');
        list($type, $data) = explode(';', $data);
        list(, $data)      = explode(',', $data);
        $data = base64_decode($data);

        $image_name= "/upload/" . time().$k.'.png';
        $path = public_path() . $image_name;
        file_put_contents($path, $data);
        $img->removeAttribute('src');
        $img->setAttribute('src', $image_name);
      }
      $experience = $dom->saveHTML();

      $teacherProfile = TeacherProfile::create([
        'user_id' => $user->id,
        'experience' => $experience,
      ]);
      return redirect()->route('teacherProfile.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TeacherProfile  $teacherProfile
     * @return \Illuminate\Http\Response
     */
    public function show(TeacherProfile $teacherProfile)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TeacherProfile  $teacherProfile
     * @return \Illuminate\Http\Response
     */
    public function edit(TeacherProfile $teacherProfile)
    {
        return view('teacherprofile.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TeacherProfile  $teacherProfile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TeacherProfile $teacherProfile)
    {
      $user = Auth::user();
      $validatedData = $request->validate([
        'experience' => 'required',
      ]);
      // dd($validatedData['content']);
      $experience = $request->input('experience');
      $dom = new \DomDocument();
      $dom->loadHtml($experience, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
      $images = $dom->getElementsByTagName('img');

      foreach($images as $k => $img){
        $data = $img->getAttribute('src');
        list($type, $data) = explode(';', $data);
        list(, $data)      = explode(',', $data);
        $data = base64_decode($data);

        $image_name= "/upload/" . time().$k.'.png';
        $path = public_path() . $image_name;
        file_put_contents($path, $data);
        $img->removeAttribute('src');
        $img->setAttribute('src', $image_name);
      }
      $experience = $dom->saveHTML();

      $teacherProfile->experience = $experience;
      $teacherProfile->save();
      return redirect()->route('teacherProfile.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TeacherProfile  $teacherProfile
     * @return \Illuminate\Http\Response
     */
    public function destroy(TeacherProfile $teacherProfile)
    {
        //
    }
}
