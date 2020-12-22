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
    <div class="card mb-2 question_format d-none">
      <div class="card-body">
        <form class="" action="" method="post" data="">
          <div class="form-group">
            <label for="question">Question</label>
            <textarea  id="question" name="question" class="form-control @error('question') is-invalid @enderror question_input" rows="8" cols="80">{{ old('question') }}</textarea>
            @error('question')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
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
                  <input type="radio" name="" value=""><input type="text" name="options" value="" class="ml-2">
                </div>
                <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn">Add another option</button>

              </div>
              <!-- For checkbox input type -->
              <div class="mt-2 checkbox" style="display: none;">
                <div class="checkbox_answer_format mb-2">
                  <input type="checkbox" name="" value=""><input type="text" name="options" value="" class="ml-2">
                </div>
                <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn">Add another option</button>
              </div>
              <!-- For paragraph answer type -->
              <div class="mt-2 paragraph" style="display: none;">
                <textarea  id="answer" name="answer" class="form-control" rows="8" cols="80"></textarea>

              </div>
            </div>


          </div>
        </form>

      </div>


    </div>

    <div class="card mb-2 question_format">
      <div class="card-body">
        <form class="" action="" method="post" data="for_question">
          <div class="form-group">
            <label for="question">Question</label>
            <textarea  id="question" name="question" class="form-control @error('question') is-invalid @enderror question_input" rows="8" cols="80">{{ old('question') }}</textarea>
            @error('question')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
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
                  <input type="radio" name="" value=""><input type="text" name="options" value="" class="ml-2">
                </div>
                <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn">Add another option</button>

              </div>
              <!-- For checkbox input type -->
              <div class="mt-2 checkbox" style="display: none;">
                <div class="checkbox_answer_format mb-2">
                  <input type="checkbox" name="" value=""><input type="text" name="options" value="" class="ml-2">
                </div>
                <button type="button" name="button" class="btn btn-sm btn-secondary border-0 add_another_option_btn">Add another option</button>
              </div>
              <!-- For paragraph answer type -->
              <div class="mt-2 paragraph" style="display: none;">
                <textarea  id="answer" name="answer" class="form-control" rows="8" cols="80"></textarea>

              </div>
            </div>


          </div>
        </form>

      </div>


    </div>
    <!-- End question -->




  </div>
  <div class="card-footer">
    <button type="button" name="button" class="btn btn-sm btn-secondary question_add_another_btn">Add Another Question</button>
  </div>
  <button type="button" name="button" class="question_save_btn btn btn-sm btn-success">Save</button>
</div>

@endsection

@section('script')
<script type="text/javascript" src="{{ asset('js/question.js') }}"></script>
<script type="text/javascript">

</script>
@endsection
