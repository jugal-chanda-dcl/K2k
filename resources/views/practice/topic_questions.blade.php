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
      @php
        $attempts = $topic->learn->question->answers()->where('user_id',Auth::user()->id)->count();
        $limit = $topic->learn->question->practice_limit;
      @endphp
      <li>
        <a href="{{ route('answer.submit_view',['question'=>$topic->learn->question]) }}">Practice {{ $topic->name }}</a>
        <span>(<span class="text-danger text-bold">{{ $attempts }}</span> Attempts <span class="text-success">{{ $limit-$attempts }}</span> Remaining)</span>
        @if($topic->learn->question->answers()->where('user_id',Auth::user()->id)->count())
          <ul>
            @foreach($topic->learn->question->answers()->where('user_id',Auth::user()->id)->get() as $answer)
              <li>
                <span>Score: {{  $answer->score  }} out of {{ $answer->total }}</span>
                @if($answer->checked)
                <span class="text-success">(Script Checked)</span>
                @else
                <span class="text-danger">(Script Not Checked By Teacher)</span>
                @endif
              </li>
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
