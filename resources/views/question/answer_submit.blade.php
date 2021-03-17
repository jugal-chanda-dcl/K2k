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
  .right{
    background-color: rgba(40,167,69,0.8);
  }
  .score_div {
    font-weight: 600;
  }
</style>

@endsection
@section('content')

<div class="card">
  <div class="card-header">
    Question
    @if (session('status'))
      <div class="alert alert-success" role="alert">
        {{ session('status') }}
      </div>
    @endif
  </div>
  <input type="text" name="information" value="" hidden readonly url="" subUrl = "{{ route('answer.store',['question' => $question,'user'=>Auth::user()]) }}" answered="" questionRetriveUrl =" {{ route('question.retrive',['question' => $question]) }} ">
  <div class="card-body question_conatiner">
    <!-- Question -->
  <ol class="questionContainer">

  </ol>
    <!-- End question -->

  </div>
  <button type="button" name="button" id="answer_save_btn" class="btn btn-sm btn-success" onclick="submitAnswer()">Submit</button>
</div>

<li class="d-none" id="questionFormat">
  <div class="question">

  </div>
  <div class="answer">
    <form class="" action="" method="post">

    </form>

  </div>
</li>
<div class="d-none" id="short_answer_format">

</div>
<div class="form-group d-none" id="short_answer_intput">
  <input type="text" name="" value="" class="form-control" onkeyup="anwerShortAnswer($(this))">
</div>
<div class="d-none bg-light px-2 py-1 mt-2" id="text_answer_format" style="min-height: 50px;">

</div>
<div class="form-group d-none" id="paragraph_format">

</div>
<div class="form-group d-none" id="paragraph_input">
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
  <span class="float-right mr-2 d-none">Correct Answer</span>
</div>



@endsection

@section('script')

<script type="text/javascript" src="{{ asset('js/answer_submit_view.js') }}"></script>

@endsection
