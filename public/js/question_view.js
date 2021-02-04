var questionIDs = [];
var questionIdFormat = "q_";
var questionOptionsIds = [];

var learnId = $("input[name='information']").val();
var retriveURL = $("input[name='information']").attr('url');
var answerSubmitUrl = $("input[name='information']").attr('subUrl');
var isAnswered = $("input[name='information']").attr('answered');

var data = ""

$( document ).ready(function() {
  function print(object) {
    console.log(object);
  }
  function removeId(el) {
    var temp = el.attr("id");
    el.attr("id","");
    el.attr("data_id",temp);
    return el;
  }
  function checkedOrNot(questionId,optionId) {
    if(isAnswered == 1){
      if(data[questionId]['answer'].includes(optionId)) {
        return true;
      }
    }
    return false;
  }
  function radioInputSet(el,name,id,checked=false) { // el = radio input element
    el.attr("name",name);
    el.attr("id",id);
    el.attr("checked",checked);
    return el;
  }

  function checkboxInputSet(el,name,id,checked=false) { // el = check box input element
    el.attr("id",id);
    el.attr("name",name);
    el.attr("checked",checked);
    return el;
  }

  function optionLabelSet(el,label,id) { // el = label element
    el.attr("for",id);
    el.html(label);
    return el;
  }

  function setUpQuestion(el,questionId) { // el = question element
    el.attr("id",questionId);
    el.removeClass("d-none");
    el.find(".question").html(data[questionId]['question']);
    return el;
  }


  function multipleChoiceOptionAdd(el,questionId) { //el = option container
    var optionFormat = $("#multiple_choice_option_format");
    $.each(data[questionId]['options'],function(id,val){
      var optionFormatClone = optionFormat.clone();
      var radioInput = optionFormatClone.find("input:radio");
      var optionLabel = optionFormatClone.find('label');

      optionFormatClone = removeId(optionFormatClone);
      optionFormatClone.remvoeClass("d-none");

      radioInput = radioInputSet(radioInput,questionId,id,checked=checkedOrNot(questionId,id));
      optionLabel = optionLabelSet(optionLabel,val,id);
      el.append(optionFormatClone);
    });
    return el;

  }

  function checkboxOptionAdd(el,questionId){ //el = optionContainer
    var optionFormat = $("#checkbox_option_format");
    $.each(data[questionId]['options'],function(id,val){
      var optionFormatClone = optionFormat.clone();
      var checkboxInput = optionFormatClone.find("input:checkbox");
      var optionLabel = optionFormatClone.find("label");

      optionFormatClone = removeId(optionFormatClone);
      optionFormatClone.removeClass("d-none");

      checkboxInput = checkboxInputSet(checkboxInput,id,id,checked=checkedOrNot(questionId,id));
      optionLabel = optionLabelSet(optionLabel,val,id);
      el.append(optionFormatClone);
    });
    return el;
  }

  function addOption(el,questionId) { // el = answerFormat ex (#multiple_choice_format)

    if(data[questionId]['question_type'] == 'multiple_choice'){
      el = multipleChoiceOptionAdd(el,questionId);
    }else{
      el = checkboxOptionAdd(el, questionId);
    }
    return el;
  }

  function returnAnswerContainer(el) { //el = main question format
    return el.find('.answer form');
  }
  function textAnsFormat(questionId) {
    var answer = $("#text_answer_format");
    answer = removeId(answer);
    answer.removeClass("d-none");
    answer.html(data[questionId]['answer']);
    return answer;
  }
  function shortAnswerFormat(answerFormat,questionId) {
    if(isAnswered == 1){
      answerFormat.append(textAnsFormat(questionId));
    }else{
      var answerInput = $("#short_answer_intput");
      answerInput = removeId(answerInput);
      answerInput.removeClass("d-none");
      answerInput.find("input").attr("name",questionId);
      answerFormat.append(answerInput);
    }
    return answerFormat;
  }
  function paragraphAnswerFormat(answerFormat,questionId) {
    if(isAnswered == 1){
      answerFormat.append(textAnsFormat(questionId));
    }else{
      var answerInput = $("#paragraph_input");
      answerInput = removeId(answerInput);
      answerInput.removeClass("d-none");
      answerInput.find("textarea").attr("name",questionId);
      answerFormat.append(answerInput);
    }
    return answerFormat;
  }

  function makeAnswerFormat(el,questionId) {  //el = Main Question Format / questionFormatClone
    var answerContainer = returnAnswerContainer(el);  // return answer container (.answer form)
    var answerFormat = $("#"+data[questionId]['question_type']+"_format").clone();
    answerFormat = removeId(answerFormat);
    answerFormat.removeClass("d-none");
    if(data[questionId]['question_type'] == "short_answer"){
      answerFormat = shortAnswerFormat(answerFormat,questionId);
    }
    else if(data[questionId]['question_type'] == "paragraph"){
      answerFormat = paragraphAnswerFormat(answerFormat,questionId);
    }
    else{
      answerFormat = addOption(answerFormat,questionId);
    }
    answerContainer.append(answerFormat);
    return el;
  }

  function anseredAnswerFormat() {
    $("#answer_save_btn").addClass("d-none");
    $("#answer_save_btn").attr("disabled","true");
  }
  function setUpAnswerFormat(el,questionId){ // el = questionFormatClone
    if(isAnswered == 1){
      anseredAnswerFormat();
    }
    el = makeAnswerFormat(el,questionId)
    return el;
  }
  function readyForAnswer(questionId) {
    var questionType = data[questionId]['question_type'];
    if(questionType == 'short_answer' || questionType == 'paragraph'){
      data[questionId]['answer'] = "";
    }else{
      data[questionId]['answer'] = [];
    }
  }

  function loadHTMl() {
    var questionContainer = $('.questionContainer');
    var questionFormat = $('#questionFormat');
    $.each(data, function(key,val){
      questionIDs.push(key);
      questionOptionsIds.push(0);
      if(isAnswered == 0){
        readyForAnswer(key);
      }

      var questionFormatClone = questionFormat.clone();
      questionFormatClone = removeId(questionFormatClone);
      questionFormatClone.removeClass('d-none');
      questionFormatClone = setUpQuestion(questionFormatClone,key);
      questionFormatClone = setUpAnswerFormat(questionFormatClone,key);
      questionContainer.append(questionFormatClone);
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
      console.log(data);
    },
    data: JSON.stringify(data)
  });
});

//Called when keyup on short answering
function anwerShortAnswer(el) {
  var questionId = el.parents("li").attr("id");
  data[questionId]['answer'] = el.val();
}

function answerParagraph(el){
  var questionId = el.parents("li").attr("id");
  data[questionId]['answer'] = el.val();
}

function answerMultipleChoice(el) {
  var questionId = el.parents("li").attr("id");
  if(el.is(":checked")){
    data[questionId]['answer'] = [];
    data[questionId]['answer'].push(el.attr("id"));
  }else{
    data[questionId]['answer'] = [];
  }
}

function answerCheckbox(el) {
  var questionId = el.parents("li").attr("id");
  var optionId = el.attr("id");
  if(el.is(':checked')){
    data[questionId]['answer'].push(optionId);
  }
  else{
    if(data[questionId]['answer'].includes(optionId)) {
      var index = data[questionId]['answer'].indexOf(optionId);
      data[questionId]['answer'].splice(index,1);
    }
  }
}

function submitAnswer() {
  // console.log(data);
  $.ajax({
    url: answerSubmitUrl,
    type: 'post',
    dataType: 'json',
    contentType: 'application/json',
    success: function (responseData) {
      while(!responseData){

      }
      // console.log(responseData);
      // window.location.replace("/question/"+ learnId +"/edit");

    },
    data: JSON.stringify(data)
  });

}
