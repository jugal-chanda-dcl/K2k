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
        <a href="{{ route('answer.submit_view',['question'=>$topic->learn->question]) }}">Practice {{ $topic->name }}</a>
        @if($topic->learn->question->answers()->where('user_id',Auth::user()->id)->count())
          <ul>
            @foreach($topic->learn->question->answers()->where('user_id',Auth::user()->id)->get() as $answer)
              <li><span>Score: {{  $answer->score  }} out of {{ $answer->total }}</span></li>
            @endforeach
          </ul>
        @endif
      </li>
      @endif
      @endforeach
    </ol>
  </div>
</div>

@endsection
