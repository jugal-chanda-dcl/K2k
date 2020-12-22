
$('#question').summernote({
  placeholder: 'Question Here',
  tabsize: 2,
  height: 100
});

$('#answer').summernote({
  placeholder: 'Answer here',
  tabsize: 2,
  height: 100
});

function change_answer_type_selecting_questin_type(question){
  question = question.get(0);
  question_type = question.value;
  parent_tag = $( question ).parent().get(0);
  answer_tag = $(parent_tag).find(".answer").get(0);
  if(question_type == 'short_answer')
  {
    $(answer_tag).find(".short_answer").hide();
    $(answer_tag).find(".multiple_choice").hide();
    $(answer_tag).find(".checkbox").hide();
    $(answer_tag).find(".paragraph").hide();
    $(answer_tag).find(".short_answer").show();
  }
  else if(question_type == 'multiple_choice')
  {
    $(answer_tag).find(".short_answer").hide();
    $(answer_tag).find(".multiple_choice").hide();
    $(answer_tag).find(".checkbox").hide();
    $(answer_tag).find(".paragraph").hide();
    $(answer_tag).find(".multiple_choice").show();
  }
  else if(question_type == 'check_box')
  {
    $(answer_tag).find(".short_answer").hide();
    $(answer_tag).find(".multiple_choice").hide();
    $(answer_tag).find(".checkbox").hide();
    $(answer_tag).find(".paragraph").hide();
    $(answer_tag).find(".checkbox").show();

  }
  else if(question_type == 'paragraph')
  {
    $(answer_tag).find(".short_answer").hide();
    $(answer_tag).find(".multiple_choice").hide();
    $(answer_tag).find(".checkbox").hide();
    $(answer_tag).find(".paragraph").hide();
    $(answer_tag).find(".paragraph").show();
  }
}
$("select[name='question_type']").change(function(){
  change_answer_type_selecting_questin_type($(this));
});

function add_another_question(){
  question_format  = $('.question_conatiner .question_format:first-child');
  console.log(question_format);
  question_format = $(question_format).clone();
  question_format.removeClass('d-none');
  $('.question_conatiner').append(question_format);
  $("select[name='question_type']").change(function(){
    change_answer_type_selecting_questin_type($(this));
  });
  $('.add_another_option_btn').click(function(){
    parent_div = $('.add_another_option_btn').parent().get(0);
    answer_format = $(parent_div).find("div:first-child");
    $(this).before($(answer_format).clone());
    console.log($(answer_format).get(0));
  });
}
$(".question_add_another_btn").click(function(){
  add_another_question();
});

$('.add_another_option_btn').click(function(){
  parent_div = $('.add_another_option_btn').parent().get(0);
  answer_format = $(parent_div).find("div:first-child");
  $(this).before($(answer_format).clone());
  console.log($(answer_format).get(0));
});
