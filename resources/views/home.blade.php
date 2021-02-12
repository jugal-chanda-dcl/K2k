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
        <form class="my-1" action="" method="get">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-4 my-1">
              <label class="sr-only" for="subject">Subject</label>
              <select name="subject" class="form-control" id="subject" placeholder="Hello" required>
                <option disabled selected>--Add subject filter--</option>
                @foreach($distinctSubjects as $subjectName)
                  <option value="{{ strtolower($subjectName->name)  }}" @if($filters['subject'] == $subjectName->name) selected @endif >{{ $subjectName->name }}</option>
                @endforeach
              </select>
            </div>
            <div class="col-md-4 my-1">
              <label class="sr-only" for="class">Class</label>
              <select name="class" class="form-control" id="class" placeholder="Hello">
                <option disabled selected>--Add class filter--</option>
                @foreach($distinctClass as $class)
                  <option value="{{ $class->class }}" @if($filters['class'] == $class->class) selected @endif>Class-{{ $class->class }}</option>
                @endforeach
              </select>
            </div>
            <div class="text-center">
              <button type="submit" name="" class="btn btn-info btn-sm px-3">Add Filter</button>
              <a href="{{ route('home') }}" class="btn btn-primary btn-sm px-3">Clear Filter</a>
            </div>

          </div>
        </form>
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
