@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">
    <h3>Topic Name: {{ $learn->topic->name }}</h3>
    <h4>Created by: {{ $learn->user->name }}</h4>
    <a href="{{route('learn.edit',['learn'=>$learn->id])}}" class="btn btn-info btn-sm">Edit</a>
    <form class="d-inline" action="{{ route('learn.destroy',['learn'=>$learn->id])}}" method="post">
          @csrf
          @method('delete')
          <button type="submit" name="button"  class="btn btn-danger btn-sm">Delete</button>

    </form>
    @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('question.create')))
    <a href="{{ route('question.create',['learn'=>$learn]) }}" class="btn btn-sm btn-success">Add Question</a>
    @endif
  </div>

  <div class="card-body">
    {!! $learn->content !!}
  </div>
</div>

@endsection

@section('script')
<script>
  $('#content').summernote({
    placeholder: 'Hello Bootstrap 4',
    tabsize: 2,
    height: 100
  });
</script>
@endsection
