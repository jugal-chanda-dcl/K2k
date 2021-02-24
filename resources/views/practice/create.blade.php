@extends('layouts.app')

@section('style')

@endsection
@section('content')

<div class="card">
  <div class="card-header">Create Practice Questions</div>

  <div class="card-body">
    <form method="POST" action="{{ route('learn.store') }}">

        @csrf

        <div class="form-group mx-2">
            <label for="topic" class="">Choose a topic</label>
            <select class="form-control @error('topic') is-invalid @enderror" id="topic" name="topic" value="{{ old('topic') }}" required>
              @foreach($topics as $topic)
              <option value="{{ $topic->id }}">{{ $topic->name }}</option>
              @endforeach
            </select>
            @error('topic')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group mx-2">
          <label for="content">Content</label>
          <textarea  id="content" name="content" class="form-control @error('content') is-invalid @enderror" rows="8" cols="80">{{ old('topic') }}</textarea>
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
