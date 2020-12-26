@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">Create new question</div>

  <div class="card-body question_conatiner">
    <!-- Question -->
  <ol>


    @foreach($questions as $question)
    <li>
      <div class="">
        {!!  $question->question  !!}
      </div>
      <div class="answer">
        <form class="" action="" method="post">
          <div class="form-group">
            @if($question->type == "short_answer")
            <label for="">Short Answer</label>
            <input type="text" name="" value="" class="form-control">
            @elseif($question->type == "multiple_choice")
              <label for="">You Need to select one</label><br>
              @foreach($question->options as $option)
                <input type="radio" name="mcq" value="{{ $option->id }}" id="{{ 'q'.$loop->index.'o'.$option->id }}" class="mr-2" ><label for="{{ 'q'.$loop->index.'o'.$option->id }}">{{ $option->value }}</label><br>
              @endforeach
            @elseif($question->type == "check_box")
              <label for="">You can select Multiple</label><br>
              @foreach($question->options as $option)
                <input type="checkbox" name="mcq" value="{{ $option->id }}" id="{{ 'q'.$loop->index.'o'.$option->id }}" class="mr-2" ><label for="{{ 'q'.$loop->index.'o'.$option->id }}">{{ $option->value }}</label><br>
              @endforeach
            @elseif($question->type == "paragraph")
            <label for="">Write your answer</label>
            <textarea name="name" rows="8" cols="80" class="form-control"></textarea>
            @endif
          </div>

        </form>

      </div>
    </li>

    @endforeach
  </ol>
    <!-- End question -->

  </div>
  <button type="button" name="button" class="question_save_btn btn btn-sm btn-success">Submit</button>
</div>

@endsection

@section('script')

@endsection
