@extends('layouts.app')


@section('style')

@endsection

@section('content')

<div class="card">

  <div class="card-header">
    <div class="">
      Subject: {{ $subject->name }}
    </div>
    <div class="">
      Class: {{ $subject->class }}
    </div>
  </div>
  <div class="bg-success p-2 d-none my-1" id="status">

  </div>
  <div class="card-body">
    <ol>
      @foreach($subject->topics as $topic)
      @if($topic->learn->question)
      <li>
        <a href="{{ route('learn.questions',['learn'=>$topic->learn]) }}">Practice {{ $topic->name }}</a>
      </li>
      @endif
      @endforeach
    </ol>
  </div>
</div>

@endsection
