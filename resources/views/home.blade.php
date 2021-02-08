@extends('layouts.app')

@section('content')

<div class="card">
    <div class="card-header">{{ __('Dashboard') }}</div>

    <div class="card-body">
        @if (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
        @endif
        <div class="row">
          @foreach($subjects as $subject)
          <div class="col-md-4">
            <div class="card">
              <div class="card-header text-center">
                {{ $subject->name }}
              </div>
            </div>
          </div>
          @endforeach

        </div>
    </div>
</div>

@endsection
