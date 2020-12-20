@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection

@section('content')

<div class="card">
  <div class="card-header">Create Profile</div>

  <div class="card-body">
    @if (session('status'))
    <div class="alert alert-danger" role="alert">
        {{ session('status') }}
    </div>
    @endif
    <form method="POST" action="{{ route('contentDeveloperProfile.store') }}">

        @csrf

        <div class="form-group mx-2">
          <label for="experience">Experience</label>
          <textarea  id="experience" name="experience" class="form-control @error('experience') is-invalid @enderror" rows="8" cols="80">{{ old('experience') }}</textarea>
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
  $('#experience').summernote({
    placeholder: 'Hello Bootstrap 4',
    tabsize: 2,
    height: 100
  });
</script>
@endsection
