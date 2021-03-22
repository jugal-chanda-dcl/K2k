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
  <input type="text" name="information" value="" hidden readonly retriveURL="{{ route('answer.retrive',['answer'=>$answer]) }}" subUrl = "{{ route('answer.update',['answer'=>$answer]) }}" redirectUrl = "">
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
  <input type="number" name="" value="0" min="0" placeholder="Mark" onkeyup="scoreInput($(this))"> <span>Maximum Mark: <span class="max_mark">4</span> </span>
</div>
<div class="form-group d-none mt-2" id="paragraph_format">
  <input type="number" name="" value="0" min="0" placeholder="Mark" onkeyup="scoreInput($(this))"> <span>Maximum Mark: <span class="max_mark">4</span> </span>
</div>
<div class="d-none bg-light px-2 py-1 mt-2" id="text_answer_format" style="min-height: 50px;">

</div>

<div class="mt-2 d-none options" style="" id="multiple_choice_format">

</div>

<div class="mt-2 d-none options" style="" id="checkbox_format">

</div>

<div class="option_format mb-1 d-none" id="multiple_choice_option_format">
  <input type="radio" name="" value="" id="" class="mr-2" onclick="answerMultipleChoice($(this))"><label for=""></label>
</div>
<div class="option_format mb-1 d-none" id="checkbox_option_format">
  <input type="checkbox" name="" value=""  id="" class="mr-2" onclick="answerCheckbox($(this))"><label for=""></label>
</div>

@endsection

@section('script')

<script type="text/javascript">
function setSession(key,txt) {
  sessionStorage.setItem(key,txt);
}
function showtoastr(type,key) {
  if(sessionStorage.getItem(key)){
    if(type=='success'){
      toastr.success(sessionStorage.getItem(key));
      sessionStorage.removeItem(key);
    }
  }
}

showtoastr('success','scriptChecked');

</script>

<script type="text/javascript" src="{{ asset('js/check_answer_script.js') }}"></script>

@endsection
