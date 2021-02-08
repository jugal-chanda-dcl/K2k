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
          <div class="col-md-6 mb-2">
            <div class="card">
              <div class="card-header text-center">
                Subject Name: {{ $subject->name }} <br>
                Teacher: {{  $subject->user->name }}
              </div>
              <div class="card-body">
                @if(count($subject->topics))
                <ol>
                  @foreach($subject->topics as $topic)
                  <li>{{ $topic->name }}</li>
                  @endforeach
                </ol>
                @else
                <div class="text-center text-secondary">
                  No Topic Upload Yet
                </div>
                @endif
              </div>
              <div class="footer">
                <button type="button" name="button" class="btn btn-success btn-sm w-100">Subcribe</button>
              </div>
            </div>

          </div>
          @endforeach

        </div>
    </div>
</div>

@endsection
