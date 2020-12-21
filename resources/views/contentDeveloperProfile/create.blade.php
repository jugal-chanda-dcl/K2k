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
            <label for="year_of_experience" class="">Years of experience</label>
            <input id="year_of_experience" type="number" class="form-control @error('year_of_experience') is-invalid @enderror" name="year_of_experience" value="{{ old('year_of_experience') }}" required autocomplete="year_of_experience">
            @error('year_of_experience')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mx-2">
            <label for="total_completed_projects" class="text-capitalize">total completed_projects</label>
            <input id="total_completed_projects" type="number" class="form-control @error('total_completed_projects') is-invalid @enderror" name="total_completed_projects" value="{{ old('total_completed_projects') }}" required autocomplete="total_completed_projects">
            @error('total_completed_projects')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mx-2">
            <label for="focus" class="text-capitalize">focus</label>
            <input id="focus" type="text" class="form-control @error('focus') is-invalid @enderror" name="focus" value="{{ old('focus') }}" required autocomplete="focus">
            @error('focus')
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
