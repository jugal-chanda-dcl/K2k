@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">Create new subject && class</div>

  <div class="card-body">
    <form method="POST" action="{{ route('subject.store') }}">

        @csrf

        <div class="form-group mx-2">
            <label for="name" class="">Subject Name</label>
            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mx-2">
            <label for="class" class="">Class</label>
            <input type="number" id="class" class="form-control @error('class') is-invalid @enderror" name="class" value="{{ old('class') }}" required min="1" max="12">

              @error('class')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
        </div>
        <div class="form-group mx-2">
            <label for="auto_aprove" class="">Auto Aprove</label>
            <select class="form-control @error('auto_aprove') is-invalid @enderror" name="auto_aprove" required>
              <option value="0" selected>Off</option>
              <option value="1">On</option>
            </select>

              @error('auto_aprove')
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
