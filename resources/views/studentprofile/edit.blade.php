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
    <form method="POST" action="{{ route('studentProfile.update',['studentProfile'=>Auth::user()->studentProfile]) }}">

        @csrf
        @method('put')

        <div class="form-group mx-2">
            <label for="age" class="">Age</label>
            <input id="age" type="number" class="form-control @error('age') is-invalid @enderror" name="age" value="{{ $user->studentProfile->age }}" required autocomplete="age" min="1">
            @error('age')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group mx-2">
            <label for="class" class="">Class</label>
            <input id="class" type="number" class="form-control @error('class') is-invalid @enderror" name="class" value="{{ $user->studentProfile->class }}" required autocomplete="class" min="1">
            @error('class')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group mx-2">
            <label for="institute" class="">Institute</label>
            <input id="institute" type="text" class="form-control @error('institute') is-invalid @enderror" name="institute" value="{{ $user->studentProfile->institute }}" required autocomplete="institute">
            @error('institute')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group row justify-content-center mb-1">
          <button type="submit" class="btn btn-primary">
              Save
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
