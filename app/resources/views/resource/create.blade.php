@extends('layouts.admin')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">Create new Resource</div>

  <div class="card-body">
    <form method="POST" action="{{ route('resource.store') }}">

        @csrf
        <div class="form-group mx-2">
          <label for="topic">Topic Name</label>
          <input type="text" name="topic" id="topic" class="form-control @error('topic') is-invalid @enderror" value="{{ old('topic') }}">
          @error('topic')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror
        </div>

        <div class="form-group mx-2">
          <label for="content">Content</label>
          <textarea  id="content" name="content" class="form-control @error('content') is-invalid @enderror" rows="8" cols="80">{{ old('content') }}</textarea>
          @error('content')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror

        </div>

        <div class="form-group row justify-content-center mb-1">
          <button type="submit" class="btn btn-primary">
              Store
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
