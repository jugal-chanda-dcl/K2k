@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">Create new question</div>
  <input type="text" name="learn_id" value="{{ $learn->id }}" hidden readonly url="{{ route('question.retrive',['learn'=> $learn])}}" subUrl = "{{ route('question.update',['learn'=>$learn]) }}" viewUrl = "{{route('learn.questions',['learn'=>$learn])}}">
  <div class="card-body question_conatiner">
    <!-- Question -->

    <!-- End question -->

  </div>

  <div class="card-footer">
    <button type="button" name="button" class="btn btn-sm btn-secondary add_another_question_btn">Add Another Question</button>
  </div>
  <button type="button" name="button" class="question_save_btn btn btn-sm btn-success" onclick="questionSave()">Save</button>
</div>

<div class="card mb-2 questionCard d-none" id="questionFormat" >
  <div class="card-body">
    <form class="" action="" method="post" >
      <div class="form-group">
        <label for="question">Question</label>
        <textarea  name="question" class="form-control question_input" rows="8" cols="80" onkeyup="questionKeyPress($(this))"></textarea>
        <label for="question_type">Question Type</label>
        <select class="form-control" name="question_type" onchange="change_answer_type_selecting_questin_type($(this))">
          <option value=""></option>
          <option value="short_answer">Short Answer</option>
          <option value="multiple_choice">Multiple Choice</option>
          <option value="checkbox">Check Box</option>
          <option value="paragraph">Paragraph</option>
        </select>
        <div class="answer">
          <label for="answer">Answer</label>
          <div class="answerInput">

          </div>
        </div>
      </div>
    </form>
  </div>
</div>

<div class="mt-2 d-none" style="" id="short_answer_format">
  <input type="text" name=answer"" value="" class="form-control">
</div>
<div class="mt-2 d-none" style="" id="multiple_choice_format">
  <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn" onclick="addAnotherOption($(this))">Add option</button>
</div>

<div class="mt-2 d-none" style="" id="checkbox_format">
  <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn" onclick="addAnotherOption($(this))">Add option</button>
</div>
<div class="mt-2 d-none" style="" id="paragraph_format">
  <textarea  name="answer" class="form-control question_answer" rows="8" cols="80"></textarea>
</div>

<div class="option_format mb-2 d-none" id="multiple_choice_option_format">
  <input type="radio" name="" value="" onclick="answered($(this))"><input type="text" name="optionLabel" value="" class="ml-2" onkeyup="optionLabelKeyPress($(this))">
</div>
<div class="option_format mb-2 d-none" id="checkbox_option_format">
  <input type="checkbox" name="" value="" onclick="answered($(this))"><input type="text" name="optionLabel" value="" class="ml-2" onkeyup="optionLabelKeyPress($(this))" >
</div>

@endsection

@section('script')
<script type="text/javascript" src="{{ asset('js/question_edit.js') }}"></script>
<script type="text/javascript">

</script>
@endsection
