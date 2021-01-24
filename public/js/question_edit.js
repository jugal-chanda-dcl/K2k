var questionIDs = [];
var questionIdFormat = "q_";
var questionOptionsIds = [];
var learnId = $("input[name='learn_id']").val();
var retriveURL = $("input[name='learn_id']").attr('url');
var submitUrl  = $("input[name='learn_id']").attr('subUrl');
var viewUrl = $("input[name='learn_id']").attr('viewUrl');
var data = ""




$( document ).ready(function() {

  function addOptions(question,key){
    var questionType = data[key]['question_type'];
    var optionFormat = $("#"+questionType+"_option_format");

    $.each(data[key]['options'],function(id,val){
      var optionFormatClone = optionFormat.clone();
      optionFormatClone.attr("id",id);
      optionFormatClone.removeClass("d-none");
      if(data[key]['question_type'] == "multiple_choice"){
        var radioInput = optionFormatClone.find("input:radio");
        if(id == data[key]['options_answer'][0]){
          radioInput.attr('checked',true);
        }
        radioInput.attr("name",key);
      }else{
        var checkInput = optionFormatClone.find("input:checkbox");
        if(data[key]['options_answer'].indexOf(id) != -1){
          checkInput.attr('checked',true);
        }
        checkInput.attr("name",id);
      }
      optionFormatClone.find("input[name='optionLabel']").val(val);
      question.find("button").before(optionFormatClone);
      var questionIdIndex = questionIDs.indexOf(key);
      questionOptionsIds[questionIdIndex] = parseInt(id.split('>')[1].split('_')[1]);
    });

    return question;
  }

  function loadHTMl() {
    var questionContainer = $('.question_conatiner');
    var questionFormat = $('#questionFormat');
    $.each(data, function(key,val){
      questionIDs.push(key);
      questionOptionsIds.push(0);
      temp = questionFormat.clone();
      temp.attr('id',key);
      temp.removeClass('d-none');
      temp.find("textarea[name='question']").val(val['question']);
      $.each(temp.find('select[name="question_type"]').children(),function(index,childElement){
        if($(childElement).val() == data[key]['question_type']){
          $(childElement).attr('selected',true);
        }
      });
      var answerInput = temp.find('.answerInput');
      var answerFormat = $("#"+data[key]['question_type']+"_format").clone();
      answerFormat.attr("id","");
      answerFormat.attr("data_id",data[key]['question_type']+"_format");
      answerFormat.removeClass('d-none');
      answerInput.append(answerFormat);
      if(data[key]['question_type'] == "multiple_choice" || data[key]['question_type'] == "checkbox"){
        temp = addOptions(temp,key);
      }
      questionContainer.append(temp);
    });

  }

  $.ajax({
    url: retriveURL,
    type: 'get',
    dataType: 'json',
    contentType: 'application/json',
    success: function (responseData) {
      while(!responseData){

      }
      // window.location.replace("/question/"+ learnId +"/edit");
      data = JSON.parse(responseData);
      loadHTMl();
    },
    data: JSON.stringify(data)
  });

});

function initializeData() {
  return {
    'question': "",
    'question_type' : "",
    'options': {},
    'options_answer' : [],
  };
}


function resetData(questionId) {
  if(data[questionId]['question_type'] == 'multiple_choice' || data[questionId]['question_type'] == 'checkbox'){
    data[questionId]['options'] = {};
    data[questionId]['options_answer'] = [];
    questionOptionsIds[questionIDs.indexOf(questionId)] = 0;
  }
}

// After changeing question type it will be run throgh
// Onclick = "change_answer_type_selecting_questin_type($(this))" from html

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

$(".add_another_question_btn").click(function(){
  var questionFormat = $("#questionFormat").clone();
  var nextQuestionId = questionIdFormat + (parseInt(questionIDs[questionIDs.length-1].split("_")[1]) + 1);
  questionIDs.push(nextQuestionId);
  questionOptionsIds.push(0);
  questionFormat.attr('id',nextQuestionId);
  questionFormat.removeClass('d-none');
  $(".question_conatiner").append(questionFormat);
  data[nextQuestionId] = initializeData();
  // console.log(data);
});

function questionKeyPress(el){
  var question = el.val();
  var questionId = el.parents(".questionCard").attr("id");
  data[questionId]['question'] = question;
}

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

function optionLabelKeyPress(el) {
  var optionId = el.parents(".option_format").attr("id");
  var questionId = optionId.split(">")[0];
  data[questionId]['options'][optionId] = el.val();
}
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

function questionSave(){
  // console.log(JSON.stringify(data));
  // console.log(data);
  // console.log(submitUrl);

  $.ajax({
    url: submitUrl,
    type: 'post',
    dataType: 'json',
    contentType: 'application/json',
    success: function (responseData) {
      while(!responseData){

      }
      window.location.replace(viewUrl);


    },
    data: JSON.stringify(data)
  });
}
