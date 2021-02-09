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
                Class: {{ $subject->class }} <br>
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
              @if($subject->users->contains(Auth::user()->id))
                <div class="footer">
                  <a href="{{ route('subject.subscribe',['subject'=>$subject]) }}"class="btn btn-danger btn-sm w-100">Unsubscribe</a>
                </div>
              @else
                @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.subscribe')))
                <div class="footer">
                  <a href="{{ route('subject.subscribe',['subject'=>$subject]) }}"class="btn btn-success btn-sm w-100">Subcribe</a>
                </div>
                @endif
              @endif
            </div>

          </div>
          @endforeach

        </div>
    </div>
</div>

@endsection
