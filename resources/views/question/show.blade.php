@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">Question</div>
  <input type="text" name="learn_id" value="{{ $learn->id }}" hidden readonly url="{{ route('question.retrive',['learn'=> $learn,'user'=>Auth::user()])}}" subUrl = "{{route('answer.store',['question'=>$learn->question,'user'=>Auth::user()])}}">
  <div class="card-body question_conatiner">
    <!-- Question -->
  <ol class="questionContainer">

  </ol>
    <!-- End question -->

  </div>
  <button type="button" name="button" class="question_save_btn btn btn-sm btn-success" onclick="submitAnswer()">Submit</button>
</div>

<li class="d-none" id="questionFormat">
  <div class="question">

  </div>
  <div class="answer">
    <form class="" action="" method="post">

    </form>

  </div>
</li>
<div class="form-group d-none" id="short_answer_format">
  <input type="text" name="" value="" class="form-control" onkeyup="anwerShortAnswer($(this))">
</div>
<div class="form-group d-none" id="paragraph_format">
  <textarea name="" rows="8" cols="80" class="form-control" onkeyup="answerParagraph($(this))"></textarea>
</div>
<div class="mt-2 d-none options" style="" id="multiple_choice_format">

</div>

<div class="mt-2 d-none options" style="" id="checkbox_format">

</div>

<div class="option_format  d-none" id="multiple_choice_option_format">
  <input type="radio" name="" value="" id="" class="mr-2" onclick="answerMultipleChoice($(this))"><label for=""></label>
</div>
<div class="option_format d-none" id="checkbox_option_format">
  <input type="checkbox" name="" value=""  id="" class="mr-2" onclick="answerCheckbox($(this))"><label for=""></label>
</div>

@endsection

@section('script')

<script type="text/javascript" src="{{ asset('js/question_view.js') }}"></script>

@endsection
