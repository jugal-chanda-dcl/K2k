@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">Create new learning material</div>

  <div class="card-body">
    <form method="POST" action="{{ route('content.update',['content'=>$content]) }}">

        @csrf
        @method('put')

        <div class="form-group mx-2">
          <label for="title">Content Title</label>
          <input type="text" id="title" name="title" value="{{ $content->title }}" class="form-control @error('title') is-invalid @enderror">
          @error('title')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror

        </div>
        <div class="form-group mx-2">
          <label for="ammount">Ammont(In TK)</label>
          <input type="number" id="ammount" name="ammount" value="{{ $content->ammount }}" class="form-control @error('ammount') is-invalid @enderror" min="0">
          @error('ammount')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror
        </div>
        <div class="form-group mx-2">
          <label for="content">Content</label>
          <textarea  id="content" name="content" class="form-control @error('content') is-invalid @enderror" rows="8" cols="80">{{ $content->content }}</textarea>
          @error('content')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror

        </div>

        <div class="form-group row justify-content-center mb-1">
          <button type="submit" class="btn btn-success">
              Update
          </button>
        </div>
    </form>
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
