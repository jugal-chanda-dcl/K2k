<?php

namespace App\Http\Controllers;

use App\ContentDeveloperProfile;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Session;

class ContentDeveloperProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('contentDeveloperProfile.profile',['user'=>Auth::user()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('contentDeveloperProfile.create');
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
      if ($user->contentDeveloperProfile)
      {
        Session::flash('status',"Already profile created. You can update your profile");
        return redirect()->back();
      }
      $validatedData = $request->validate([
        'year_of_experience' => 'required',
        'total_completed_projects' => 'required',
        'focus' => 'required',
      ]);

      $contentDeveloperProfile = ContentDeveloperProfile::create([
        'user_id' => $user->id,
        'year_of_experience' => $validatedData['year_of_experience'],
        'total_completed_projects' => $validatedData['total_completed_projects'],
        'focus' => $validatedData['focus'],
      ]);
      return redirect()->route('contentDeveloperProfile.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ContentDeveloperProfile  $contentDeveloperProfile
     * @return \Illuminate\Http\Response
     */
    public function show(ContentDeveloperProfile $contentDeveloperProfile)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ContentDeveloperProfile  $contentDeveloperProfile
     * @return \Illuminate\Http\Response
     */
    public function edit(ContentDeveloperProfile $contentDeveloperProfile)
    {
        return view('contentDeveloperProfile.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ContentDeveloperProfile  $contentDeveloperProfile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ContentDeveloperProfile $contentDeveloperProfile)
    {
      $user = Auth::user();
      $validatedData = $request->validate([
        'year_of_experience' => 'required',
        'total_completed_projects' => 'required',
        'focus' => 'required',
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

      $contentDeveloperProfile->experience = $experience;
      $contentDeveloperProfile->save();
      return redirect()->route('contentDeveloperProfile.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ContentDeveloperProfile  $contentDeveloperProfile
     * @return \Illuminate\Http\Response
     */
    public function destroy(ContentDeveloperProfile $contentDeveloperProfile)
    {
        //
    }
}
