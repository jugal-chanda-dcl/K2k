@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">
    <h3>Topic Name: {{ $learn->topic->name }}</h3>
    <h4>Created by: {{ $learn->topic->subject->user->name }}</h4>
    @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('learn.edit')))
    <a href="{{route('learn.edit',['learn'=>$learn->id])}}" class="btn btn-info btn-sm">Edit</a>
    @endif
    @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('learn.destroy')))
    <form class="d-inline" action="{{ route('learn.destroy',['learn'=>$learn->id])}}" method="post">
          @csrf
          @method('delete')
          <button type="submit" name="button"  class="btn btn-danger btn-sm">Delete</button>

    </form>
    @endif
    @if($learn->question)
      @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('question.edit')))
        <a href="{{ route('question.edit',['question'=>$learn->question]) }}" class="btn btn-sm btn-success">Edit Questions</a>
      @endif
      @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('answer.submit_view')))
        @if($learn->question)
          <a href="{{ route('answer.submit_view',['question'=>$learn->question]) }}" class="btn btn-sm btn-info">View Questions and Practice</a>
        @endif
        @if($answer)
          @if($answer->checked)
            <span class="bg-success p-1 rounded" style="color: white;">Score: {{ $answer->score }} out of {{ $answer->total }}</span>
          @else
            <span class="bg-info p-1 rounded" style="color: white;">Answer Not Checked By Teacher</span>
          @endif
        @endif
      @endif
      @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('answer.review_answers')))
        <a href="{{ route('answer.review_answers',['learn'=>$learn]) }}" class="btn btn-sm btn-info">Riview Answers</a>
      @endif
    @else
      @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('question.create')))
      <a href="{{ route('question.create',['learn'=>$learn]) }}" class="btn btn-sm btn-success">Add Question</a>
      @endif
    @endif

    @if (session('status'))
      <div class="alert alert-success" role="alert">
        {{ session('status') }}
      </div>
    @endif

  </div>

  <div class="card-body">
    {!! $learn->content !!}
  </div>
  <div class="">
    <h1 class="text-center">Images/Documents</h1>
    <div class="row no-gutters">
      @foreach($learn->files as $file)
        <div class="col-md-4 my-2">
          <object type="" data="{{ asset($file->path) }}" style="width: 100%; height: 200px;"> </object>
          <a href="{{ asset($file->path) }}" class="btn btn-sm btn-info">View</a>
          @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('file.delete')))
            <a href="{{ route('file.delete',['file'=>$file]) }}" class="btn btn-sm btn-danger">Delete</a>
          @endif
        </div>
      @endforeach

    </div>
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
