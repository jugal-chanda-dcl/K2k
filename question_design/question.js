
var questionIDs = ['q_1'];
var questionIdFormat = "q_";
var questionOptionsIds = [0,];
 var data = {
   'q_1' : {
     'question': "",
     'question_type' : "",
     'options': {},
     'options_answer' : {},
   }
 };


// After changeing question type it will be run throgh
// Onclick = "change_answer_type_selecting_questin_type($(this))" from html


function change_answer_type_selecting_questin_type(question){
  var parentDiv = question.parent();
  var questionType = question.val();
  var answerContainer = parentDiv.find(".answer .answerInput");
  answerContainer.empty();
  var answerFormat = $("#"+questionType+"_format").clone();
  answerFormat.removeClass('d-none');
  answerContainer.append(answerFormat);
  var questionId = question.parents(".questionCard").attr("id");
  questionOptionsIds[questionIDs.indexOf(questionId)] += 1;
  data[questionId]['question_type'] = questionType;
  console.log(questionOptionsIds);
}

// $("select[name='question_type']").change(function(){
//   change_answer_type_selecting_questin_type($(this));
// });

$(".add_another_question_btn").click(function(){
  var questionFormat = $("#questionFormat").clone();
  var nextQuestionId = questionIdFormat + (parseInt(questionIDs[questionIDs.length-1].split("_")[1]) + 1);
  questionIDs.push(nextQuestionId);
  questionOptionsIds.push(0);
  questionFormat.attr('id',nextQuestionId);
  questionFormat.removeClass('d-none');
  $(".question_conatiner").append(questionFormat);
  data[nextQuestionId] = {
    'question' : "",
    'question_type' : "",
    'options' : {},
    'options_answer' : {},
  };
  console.log(data);
});

function questionKeyPress(el){
  var question = el.val();
  var questionId = el.parents(".questionCard").attr("id");
  data[questionId]['question'] = question;
  console.log(data);
}

function addAnotherOption(el) {
  console.log(el);
  var optionContainer = el.parent();
  var optionFormat = optionContainer.find('.option_format:first').clone();
  optionFormat.find("input[name='optionLabel']").val("");
  el.before(optionFormat);
}

function optionLabelKeyPress(el) {
  console.log(el);
}
