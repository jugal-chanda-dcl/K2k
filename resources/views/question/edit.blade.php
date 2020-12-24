@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')

<div class="card">
  <div class="card-header">Create new question</div>

  <input type="text" name="learn_id" value="{{ $learn->id }}" hidden readonly>
  <div class="card-body question_conatiner">
    <!-- Question -->

    <div class="card mb-2 question_format d-none">
      <div class="card-body">
        <form class="" action="" method="post" data="">
          <div class="form-group">
            <label for="question">Question <span class="btn btn-danger btn-sm question_delete_btn" data_question_id="">Delete</span> </label>
            <textarea  name="question" class="form-control question_input" rows="8" cols="80"></textarea>
            <label for="question_type">Question Type</label>
            <select class="form-control" name="question_type">
              <option value="short_answer">Short Answer</option>
              <option value="multiple_choice">Multiple Choice</option>
              <option value="check_box">Check Box</option>
              <option value="paragraph">Paragraph</option>
            </select>
            <div class="answer">
              <label for="answer">Answer</label>
              <!--  For short answer type -->
              <div class="mt-2 short_answer" style="">
                <input type="text" name=answer"" value="" class="form-control">
              </div>
              <!--  For multiple choice answer type -->
              <div class="mt-2 multiple_choice" style="display: none;">
                <div class="multiple_choice_answer_format mb-2">
                  <input type="radio" name="" value=""><input type="text" name="options_multiple_choice" value="" data_option_id="" class="ml-2">
                </div>
                <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn">Add another option</button>

              </div>
              <!-- For checkbox input type -->
              <div class="mt-2 checkbox" style="display: none;">
                <div class="checkbox_answer_format mb-2">
                  <input type="checkbox" name="" value=""><input type="text" name="options_checkbox" value="" data_option_id="" class="ml-2">
                </div>
                <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn">Add another option</button>
              </div>
              <!-- For paragraph answer type -->
              <div class="mt-2 paragraph" style="display: none;">
                <textarea  name="answer" class="form-control question_answer" rows="8" cols="80"></textarea>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>

    @foreach($learn->questions as $question)
    <div class="card mb-2 question_format">

      <div class="card-body">
        <form class="" action="" method="post" data="for_question">
          <div class="form-group">
            <label for="question">Question <span href="" class="btn btn-danger btn-sm question_delete_btn" data_question_id="{{ $question->id }}">Delete</span></label>
            <textarea  name="question" class="form-control question_input" rows="8" cols="80" data_question_id="{{ $question->id }}">{{ $question->question }}</textarea>
            <label for="question_type">Question Type</label>
            <select class="form-control" name="question_type">
              <option value="short_answer" @if($question->type == 'short_answer') selected @endif>Short Answer</option>
              <option value="multiple_choice" @if($question->type == 'multiple_choice') selected @endif >Multiple Choice</option>
              <option value="check_box" @if($question->type == 'check_box') selected @endif >Check Box</option>
              <option value="paragraph" @if($question->type == 'paragraph') selected @endif >Paragraph</option>
            </select>
            <div class="answer">
              <label for="answer">Answer</label>
              <!--  For short answer type -->
              <div class="mt-2 short_answer" style=" @if($question->type != 'short_answer') display: none; @endif ">
                <input type="text" name=answer"" value="" class="form-control">
              </div>
              <!--  For multiple choice answer type -->
              <div class="mt-2 multiple_choice" style="@if($question->type != 'multiple_choice') display: none; @endif">
                @if($question->type == 'multiple_choice')
                @foreach($question->options as $option)
                <div class="multiple_choice_answer_format mb-2">
                  <input type="radio" name="" value=""><input type="text" name="options_multiple_choice" value="{{ $option->value }}" data_option_id = "{{ $option->id }}"  class="ml-2">
                </div>
                @endforeach
                @else
                <div class="multiple_choice_answer_format mb-2">
                  <input type="radio" name="" value=""><input type="text" name="options_multiple_choice" value="" data_option_id = ""  class="ml-2">
                </div>
                @endif
                <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn">Add another option</button>

              </div>
              <!-- For checkbox input type -->
              <div class="mt-2 checkbox" style=" @if($question->type != 'check_box') display: none; @endif ">
                @if($question->type == 'check_box')
                @foreach($question->options as $option)
                <div class="checkbox_answer_format mb-2">
                  <input type="checkbox" name="" value=""><input type="text" name="options_checkbox" value="{{ $option->value }}" data_option_id = "{{ $option->id }}" class="ml-2">
                </div>
                @endforeach
                @else
                <div class="checkbox_answer_format mb-2">
                  <input type="checkbox" name="" value=""><input type="text" name="options_checkbox" value="" data_option_id = "" class="ml-2">
                </div>
                @endif
                <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn">Add another option</button>
              </div>
              <!-- For paragraph answer type -->
              <div class="mt-2 paragraph" style=" @if($question->type != 'paragraph') display: none; @endif ">
                <textarea  name="answer" class="form-control question_answer" rows="8" cols="80"></textarea>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    @endforeach
    <!-- End question -->

  </div>

  <div class="card-footer">
    <button type="button" name="button" class="btn btn-sm btn-secondary question_add_another_btn">Add Another Question</button>
  </div>
  <button type="button" name="button" class="question_save_btn btn btn-sm btn-success">Save</button>
</div>

@endsection

@section('script')
<script type="text/javascript" src="{{ asset('js/question_edit.js') }}"></script>
<script type="text/javascript">

</script>
@endsection
