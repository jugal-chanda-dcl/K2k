
var questionIDs = ['q_1']; // Used for trach all question ids
var questionIdFormat = "q_"; // Used for set question ids format
// questionOptionsIds used for trach all question options. In this array how many options have related to questions.
// questionsIds =       ['q_1','q_2']
// questionOptionsIds = ['0'  , '1']
// question 1 have q_0 options and question q_1 have 1 options
var questionOptionsIds = [0,];
//Get the learn id form an hidden html input field
var learnId = $("input[name='learn_id']").val();

 var data = {
   'learnId': learnId,
   'q_1' : {
     'question': "",
     'question_type' : "",
     'options': {},
     'options_answer' : [],
   }
 };

// this function used for add data format for every question adding
function initializeData() {
  return {
    'question': "",
    'question_type' : "",
    'options': {},
    'options_answer' : [],
  };
}

// It is needed in this scenatio like first question format is multiple_choice then sortanswer and then againg checkbox or multiple_choice to checkbox
function resetData(questionId) {
  if(data[questionId]['question_type'] == 'multiple_choice' || data[questionId]['question_type'] == 'checkbox'){
    data[questionId]['options'] = {};
    data[questionId]['options_answer'] = [];
    questionOptionsIds[questionIDs.indexOf(questionId)] = 0;
  }
}

// After changeing question type it will be run throgh
// Onclick = "change_answer_type_selecting_questin_type($(this))" from html
// onchange="change_answer_type_selecting_questin_type($(this))"
// every times of changing question type it will run
function change_answer_type_selecting_questin_type(question){
  var parentDiv = question.parent();
  var questionType = question.val();
  var answerContainer = parentDiv.find(".answer .answerInput");
  answerContainer.empty();
  var answerFormat = $("#"+questionType+"_format").clone();
  answerFormat.attr("id","");
  answerFormat.attr("data_id",questionType+"_format");
  answerFormat.removeClass('d-none');
  answerContainer.append(answerFormat);
  var questionId = question.parents(".questionCard").attr("id");
  data[questionId]['question_type'] = questionType;
  resetData(questionId);
}

// $("select[name='question_type']").change(function(){
//   change_answer_type_selecting_questin_type($(this));
// });

// this function is for adding new question.

$(".add_another_question_btn").click(function(){
  var questionFormat = $("#questionFormat").clone(); // Make a clone of our question format which is an hidden div in our html
  var nextQuestionId = questionIdFormat + (parseInt(questionIDs[questionIDs.length-1].split("_")[1]) + 1); // for new question id we get the last question id(ex q_2) and increade it(ex. q_2 to q_3)
  questionIDs.push(nextQuestionId); // for tracking this we add new question id on our questinIds array.
  questionOptionsIds.push(0); // add relative number of options in our questionOptionsIds array. our option id format is [questionId]_O_[optionsnumber]
  questionFormat.attr('id',nextQuestionId); // reset the id questionFormat for new question id
  questionFormat.removeClass('d-none'); // remove d-none class because it was hidden
  $(".question_conatiner").append(questionFormat); //finally visualize new questin on our html
  data[nextQuestionId] = initializeData(); // add a new data format for new question id on our data array
  // console.log(data);
});




// Activate when user type something on question textarea for adding question
function questionKeyPress(el){
  var question = el.val();
  var questionId = el.parents(".questionCard").attr("id");
  data[questionId]['question'] = question;
}

/*

this function will activate when add another option btn pressed.
this is the flowchat for adding new options.
1.  find the question id from parent div. In our html question card contains a class called questionCard.
2.  find which type of option i need to add like multiple_choice or checkbox
3.  add option_format this types of option like(multiple_choice_option_format / checkbox_option_format). because in our html
    we have two types of option format which ids those.
4.  find option id by increasing relatively for this question option counter.
5.  if question is multiple_choice add same name for radio input as question id other wise add option id



*/


function addAnotherOption(el) {
  var optionContainer = el.parent();
  var questionId = el.parents(".questionCard").attr("id");
  var optionFormatId = data[questionId]['question_type']+"_option_format";
  var optionFormat = $('#'+optionFormatId).clone();
  var optionId = questionId + ">O_" + (parseInt(questionOptionsIds[questionIDs.indexOf(questionId)]) + 1);
  // console.log(optionFormat.get(0));
  questionOptionsIds[questionIDs.indexOf(questionId)] += 1;
  optionFormat.removeClass("d-none");
  optionFormat.attr("id",optionId);
  data[questionId]['options'][optionId] = "";
  if(data[questionId]['question_type'] == "multiple_choice"){
    var radioInput = optionFormat.find("input:radio");
    radioInput.attr("name",questionId);
  }else{
    var checkInput = optionFormat.find("input:checkbox");
    checkInput.attr("name",optionId);
  }
  el.before(optionFormat);
}


// Called when we adding something for option label
function optionLabelKeyPress(el) {
  var optionId = el.parents(".option_format").attr("id");
  var questionId = optionId.split(">")[0];
  data[questionId]['options'][optionId] = el.val();
}

// Called if user can submit answer of multiple_choice or checkbox question
function answered(el){
  var questionId = el.parent().attr("id").split(">")[0];
  var optionId = el.parent().attr("id");
  if(data[questionId]['question_type'] == "multiple_choice"){
    if(el.is(':checked')){
      data[questionId]['options_answer'] = [];
      data[questionId]['options_answer'].push(optionId);
    }
    else{
      data[questionId]['options_answer'] = [];
    }
  }
  else {
    if(el.is(':checked')){
      data[questionId]['options_answer'].push(optionId);
    }
    else{
      if(data[questionId]['options_answer'].includes(optionId)){
        var index = data[questionId]['options_answer'].indexOf(optionId);
        console.log("ok");
        data[questionId]['options_answer'].splice(index,1);
      }
    }
  }

}


// activate When save btn clicked for saving all questions

function questionSave(){
  // console.log(JSON.stringify(data));
  $.ajax({
    url: '/api/questions/create/',
    type: 'post',
    dataType: 'json',
    contentType: 'application/json',
    success: function (responseData) {
      while(!responseData){

      }
      window.location.replace("/question/"+ learnId +"/edit");


    },
    data: JSON.stringify(data)
  });
}
