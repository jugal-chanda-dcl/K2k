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
    <form method="POST" action="{{ route('studentProfile.update',['studentProfile'=>Auth::user()->studentProfile]) }}" enctype="multipart/form-data">

        @csrf
        @method('put')
        <div class="form-group">
          <label for="">Avatar</label>
          <input type="file" name="avatar" value="{{ old('class') }}" class="form-control form-control @error('avatar') is-invalid @enderror">
          @error('avatar')
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
        <div class="form-group mx-2">
            <label for="study_focus" class="">Study Focus</label>
            <input id="study_focus" type="text" class="form-control @error('study_focus') is-invalid @enderror" name="study_focus" value="{{ $user->studentProfile->study_focus }}" required autocomplete="study_focus">
            @error('study_focus')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mx-2">
            <label for="group" class="">Group</label>
            <input id="group" type="text" class="form-control @error('group') is-invalid @enderror" name="group" value="{{ $user->studentProfile->group }}" required autocomplete="group">
            @error('grpup')
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
