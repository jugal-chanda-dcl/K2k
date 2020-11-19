@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">Update topic related to class subject</div>

  <div class="card-body">
    <form method="POST" action="{{route('topic.update',['topic'=>$topic->id])}}">

        @csrf
        @method('put')

        <div class="form-group mx-2">
            <label for="name" class="">Topic Name</label>
            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $topic->name }}" required autocomplete="name" autofocus>

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group mx-2">
          <label for="subject">Select one</label>
          <select class="form-control" id="subject" class="form-control @error('subject') is-invalid @enderror" name="subject" value="{{ old('subject') }}" required>
            @foreach($subjects as $subject)
              <option value="{{ $subject->id }}" @if($subject->id == $topic->subject->id)  selected @endif>Class {{ $subject->class }} Subject {{ $subject->name }}</option>
            @endforeach

          </select>

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
