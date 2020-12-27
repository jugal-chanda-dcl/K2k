
// $('.question_input').summernote({
//   placeholder: 'Question Here',
//   tabsize: 2,
//   height: 100
// });
//
// $('.question_answer').summernote({
//   placeholder: 'Answer here',
//   tabsize: 2,
//   height: 100
// });
 var data = {
   '0' : {
     'question': "",
     'question_type' : "",
     'options': []
   }
 }


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
  alert("Hello");
  change_answer_type_selecting_questin_type($(this));
});

function add_another_question(){
  question_format  = $('.question_conatiner  .question_format:first');
  console.log(question_format);
  question_format = $(question_format).clone();
  question_format.removeClass('d-none');
  form_tag = $(question_format).find('form').get(0);
  $(form_tag).attr('data','for_question');
  // console.log(form_tag);
  $('.question_conatiner').append(question_format);

  $("select[name='question_type']").change(function(){
    change_answer_type_selecting_questin_type($(this));
  });

  $('.add_another_option_btn').click(function(){
    parent_div = $(this).parent().get(0);
    answer_format = $(parent_div).find("div:first-child").clone();
    answer_input = $(answer_format).find('input');
    $(answer_input).val("");
    $(this).before(answer_format);
    // console.log($(answer_format).get(0));
  });
  // $('.question_input').summernote({
  //   placeholder: 'Question Here',
  //   tabsize: 2,
  //   height: 100
  // });

  // $('.question_answer').summernote({
  //   placeholder: 'Answer here',
  //   tabsize: 2,
  //   height: 100
  // });
}

$(".question_add_another_btn").click(function(){
  add_another_question();
});

$('.add_another_option_btn').click(function(){
  parent_div = $(this).parent().get(0);
  answer_format = $(parent_div).find("div:first-child").clone();
  answer_input = $(answer_format).find('input');
  $(answer_input).val("");
  $(this).before(answer_format);
  // console.log($(answer_format).get(0));
});

function question_save(form_data){
  $.ajax({
    url: '/api/questions/create/',
    type: 'post',
    dataType: 'json',
    contentType: 'application/json',
    success: function (data) {
      while(!data){

      }
      console.log(data);


    },
    data: JSON.stringify(form_data)
  });
}

$('.question_save_btn').click(function(){
  learn_id = "";
  $("form[data='for_question']").map(function() {
    form_data = {};
    form_data['learn_id'] = $("input[name='learn_id']").get(0).value;
    learn_id = form_data['learn_id'];
    current_form = $(this);
    // console.log(current_form);

    temp = $(current_form).find("textarea[name='question']").get(0);
    form_data['question'] = temp.value;

    temp = $(current_form).find("select[name='question_type']").get(0);
    form_data['question_type'] = temp.value;

    form_data['options'] = []

    if((form_data['question_type'] != 'short_answer') && (form_data['question_type'] != 'paragraph') ){
      if(form_data['question_type'] == 'multiple_choice'){
        $(current_form).find("input[name='options_multiple_choice']").map(function(i,element){
            temp1 = $(element).get(0);
            form_data['options'][i] =  temp1.value;
        });
      }
      else{
        $(current_form).find("input[name='options_checkbox']").map(function(i,element){
            temp1 = $(element).get(0);
            form_data['options'][i] =  temp1.value;
        });
      }

    }
    // console.log(form_data);
    // question_save(form_data);

  });
  // window.location.replace("/question/"+ learn_id +"/edit");
});
