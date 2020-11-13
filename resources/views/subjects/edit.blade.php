@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">Update {{$subject->name}} Subject</div>

  <div class="card-body">
    <form method="POST" action="{{ route('subject.update',['subject'=>$subject->id]) }}">

        @csrf
        @method('put')

        <div class="form-group mx-2">
            <label for="name" class="">Subject Name</label>
            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $subject->name }}" required autocomplete="name" autofocus>

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mx-2">
            <label for="class" class="">Class</label>
            <input type="number" id="class" class="form-control @error('class') is-invalid @enderror" name="class" value="{{ $subject->class }}" required min="1" max="12"></input>

              @error('class')
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
