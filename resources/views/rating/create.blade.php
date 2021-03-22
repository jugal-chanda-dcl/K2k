@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">
    Give Rating For {{ $subject->name }}
  </div>

  <div class="card-body">
    <form method="POST" action="{{ route('rating.store',['subject' => $subject]) }}">

        @csrf
        <div class="form-group">
            <label for="rating" class="">Rating</label>
            <select class="form-control @error('rating') is-invalid @enderror" name="rating" required>
              <option value="1" selected>1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
            </select>

              @error('rating')
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
