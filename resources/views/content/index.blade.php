@extends('layouts.app')

@section('style')

@endsection
@section('content')

@if($contents->count() > 0)
  @foreach($contents as $content)
  <div class="card">
    <div class="card-header">
      {{ $content->title }}{  {{ $content->ammount }} Tk.  } <a href="{{ route('content.show',['content'=>$content]) }}" class="btn btn-sm btn-info float-right">View</a>
    </div>
    <div class="card-body">
      {!! Str::limit($content->content,$limit = 500,$end='...') !!}

    </div>
  </div>
  @endforeach
@else
<div class="card">
  <div class="card-body text-center">
    No Content Available for content developers.
  </div>
</div>
@endif

@endsection
