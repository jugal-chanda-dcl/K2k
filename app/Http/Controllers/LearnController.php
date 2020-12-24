<?php

namespace App\Http\Controllers;
use Illuminate\Validation\Rule;

use Illuminate\Http\Request;
use App\Learn;
use App\Topic;
use App\Subject;
Use Auth;

class LearnController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('learn.index',['learns'=>Learn::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Subject $subject)
    {
        return view('learn.create',['subject'=>$subject]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,Subject $subject)
    {
      $user = Auth::user();
      $validatedData = $request->validate([
        'name' => 'required',
        'content' => 'required',
      ]);
      // dd($validatedData['content']);
      $content = $request->input('content');
      $dom = new \DomDocument();
      $dom->loadHtml($content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
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
      $content = $dom->saveHTML();
      $topic = Topic::create([
        'name'=>$validatedData['name'],
        'subject_id'=> $subject->id,
      ]);

      $learn = Learn::create([
        'topic_id' => $topic->id,
        'user_id' => $user->id,
        'content' => $content,
      ]);
      return redirect()->route('topic.learn',['topic'=>$topic]);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('learn.show',['learn'=>Learn::find($id)]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('learn.edit',['learn'=>Learn::find($id)]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Learn $learn)
    {
      $user = Auth::user();

      $validatedData = $request->validate([
        'name' => 'required',
        'content' => 'required',
      ]);

      $content = $validatedData['content'];
      $dom = new \DomDocument();
      @$dom->loadHtml($content, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
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
      $content = $dom->saveHTML();

      $topic = $learn->topic;
      $topic->name = $validatedData['name'];
      $topic->save();

      $learn->content = $content;
      $learn->save();
      return redirect()->route('topic.learn',['topic'=>$topic]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $learn = Learn::find($id);
      Topic::destroy($learn->topic->id);
      Learn::destroy($id);
      return redirect()->route('learn.index');
    }
}
