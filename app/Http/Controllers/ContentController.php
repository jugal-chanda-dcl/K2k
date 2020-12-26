<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;
use Auth;

class ContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('content.index',['contents'=>Content::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('content.create');
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
      $validatedData = $request->validate([
        'title' => 'required',
        'content' => 'required',
        'ammount' => 'required|min:0',
      ]);

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

      $content = Content::create([
        'title' => $validatedData['title'],
        'user_id' => $user->id,
        'content' => $content,
        'ammount' => $validatedData['ammount'],
      ]);
      return redirect()->route('content.show',['content'=>$content]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Content  $content
     * @return \Illuminate\Http\Response
     */
    public function show(Content $content)
    {
        return view('content.show',['content'=>$content]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Content  $content
     * @return \Illuminate\Http\Response
     */
    public function edit(Content $content)
    {
        return view('content.edit',['content'=>$content]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Content  $content
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Content $content)
    {
      $user = Auth::user();
      $validatedData = $request->validate([
        'title' => 'required',
        'content' => 'required',
        'ammount' => 'required|min:0',
      ]);

      $content_des = $request->input('content');
      $dom = new \DomDocument();
      $dom->loadHtml($content_des, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
      $images = $dom->getElementsByTagName('img');

      foreach($images as $k => $img){
        $data = $img->getAttribute('src');
        if(strpos($data,'base64')!=false){
          list($type, $data) = explode(';', $data);
          list(, $data)      = explode(',', $data);
          $data = base64_decode($data);

          $image_name= "/upload/" . time().$k.'.png';
          $path = public_path() . $image_name;
          file_put_contents($path, $data);
          $img->removeAttribute('src');
          $img->setAttribute('src', $image_name);
        }
      }
      $content_des = $dom->saveHTML();

      $content->title = $validatedData['title'];
      $content->content = $content_des;
      $content->user_id = $user->id;
      $content->ammount = $validatedData['ammount'];
      $content->save();
      return redirect()->route('content.show',['content'=>$content]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Content  $content
     * @return \Illuminate\Http\Response
     */
    public function destroy(Content $content)
    {
        $content->delete();
        return redirect()->route('content.index');
    }
}
