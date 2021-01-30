@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<style media="screen">
  .correct {
    background-color: rgba(40,167,69,0.4);
  }
  .wrong{
    background-color: rgba(220,53,59,0.4);
  }
  .score_div {
    font-weight: 600;
  }
</style>
@endsection
@section('content')

<div class="card">
  <div class="card-header">Answer script of {{ $answer->user->name }}</div>
  <input type="text" name="learn_id" value="{{ $answer->question->learn->id }}" hidden readonly url="{{ route('question.retrive',['learn'=> $answer->question->learn,'user'=>$answer->user])}}" subUrl = "{{ route('answer.update',['answer'=>$answer]) }}">
  <div class="card-body question_conatiner">
    <!-- Question -->
  <ol class="questionContainer">

  </ol>
    <!-- End question -->

  </div>
  <button type="button" name="button" class="question_save_btn btn btn-sm btn-success" onclick="submitAnswer()">Confirm Checked</button>
</div>

<li class="d-none" id="questionFormat">
  <div class="question">

  </div>
  <div class="answer">
    <form class="" action="" method="post">

    </form>

  </div>
  <div class="score_div text-primary d-flex">
    <h5>Score:</h5>
    <h5 class="score pl-2">0</h5>
  </div>
</li>
<div class="form-group d-none mt-2" id="short_answer_format">
  <div id="short_answer_format_answer" class="bg-light p-2">

  </div>
  <button type="button" name="button" onclick="right($(this))" class="btn btn-success btn-sm mt-2">Right</button>
  <button type="button" name="button" onclick="wrong($(this))" class="btn btn-danger btn-sm mt-2">Wrong</button>
  <!-- <input type="text" name="" value="" class="form-control" onkeyup="anwerShortAnswer($(this))"> -->
</div>
<div class="form-group d-none mt-2" id="paragraph_format">
  <div id="paragraph_format_answer" class="bg-light p-2">

  </div>
  <button type="button" name="button" onclick="right($(this))" class="btn btn-success btn-sm mt-2">Right</button>
  <button type="button" name="button" onclick="wrong($(this))" class="btn btn-danger btn-sm mt-2">Wrong</button>
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

<script type="text/javascript" src="{{ asset('js/check_answer_script.js') }}"></script>

@endsection
