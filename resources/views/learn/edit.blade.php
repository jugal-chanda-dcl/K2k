@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">Update learning material</div>

  <div class="card-body">
    <form method="POST" action="{{ route('learn.update',['learn'=>$learn]) }}" enctype="multipart/form-data">

        @csrf
        @method('put')

        <div class="form-group mx-2">
            <label for="name" class="">Topic Name</label>
            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $learn->topic->name }}" required autocomplete="name">

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group mx-2">
          <label for="images">Upload Multiple Images</label>
          <input type="file" multiple name="images[]" value="" class="form-control" >
        </div>
        <div class="form-group mx-2">
          <label for="content">Content</label>
          <textarea  id="content" name="content" class="form-control @error('content') is-invalid @enderror" rows="8" cols="80">{!! $learn->content !!}</textarea>
          @error('content')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror

        </div>

        <div class="form-group row justify-content-center mb-1">
          <button type="submit" class="btn btn-primary">
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
