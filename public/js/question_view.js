var questionIDs = [];
var questionIdFormat = "q_";
var questionOptionsIds = [];

var learnId = $("input[name='information']").val();
var retriveURL = $("input[name='information']").attr('url');
var answerSubmitUrl = $("input[name='information']").attr('subUrl');
var isAnswered = $("input[name='information']").attr('answered');

var data = ""

$( document ).ready(function() {
  function addOptions(question,key){
    var questionType = data[key]['question_type'];
    var optionFormat = $("#"+questionType+"_option_format");

    $.each(data[key]['options'],function(id,val){
      var optionFormatClone = optionFormat.clone();
      optionFormatClone.attr("id","");
      optionFormatClone.removeClass("d-none");
      if(data[key]['question_type'] == "multiple_choice"){
        var radioInput = optionFormatClone.find("input:radio");
        radioInput.attr("name",key);
        radioInput.attr("id",id);
      }else{
        var checkInput = optionFormatClone.find("input:checkbox");
        checkInput.attr("name",id);
        checkInput.attr("id",id);
      }
      var optionLabel = optionFormatClone.find("label");
      optionLabel.attr("for",id);
      optionLabel.html(val);
      question.find(".options").append(optionFormatClone);
      var questionIdIndex = questionIDs.indexOf(key);
      questionOptionsIds[questionIdIndex] = parseInt(id.split('>')[1].split('_')[1]);
    });

    return question;
  }

  // Load answer for answerd question
  function answerd(question,key) {
    if(data[key]['question_type'] == 'short_answer'){
      var answer = question.find('input').val(data[key]['answer']);
      answer.attr('readonly',true);

    }else if(data[key]['question_type'] == 'paragraph'){
      var answer = question.find('textarea').val(data[key]['answer']);
      answer.attr('readonly',true);
    }else{
      var answer = question.find("div[data_id="+ data[key]['question_type']+"_format" +"]");
      $.each(answer.children(),function(){
        $(this).find("input").attr("disabled",true);
        var id = $(this).find("input").attr("id");
        console.log(id);
        if(data[key]['answer'].includes(id)){
          $(this).find("input").attr("checked",true);
        }
      });
    }
    $(".question_save_btn").attr("disabled",true);
    return question;
  }

  // if not answerd or first view make data object for answering question
  function notAnswered(key) {
    if(data[key]['question_type'] == 'short_answer' || data[key]['question_type'] == 'paragraph'){
      data[key]['answer'] = "";
    }else{
      data[key]['answer'] = [];
    }
  }

  function setUpQuestion(el,questionId) {
    el.attr("id",questionId);
    el.removeClass("d-none");
    el.find(".question").html(data[questionId]['question']);
    return el;
  }

  function removeId(el) {
    var temp = el.attr("id");
    el.attr("id","");
    el.attr("data_id",temp);
    return el;
  }

  function answerContainer(el) { //el = main question format
    return el.find('.answer form');
  }

  function anseredAnserFormat(el,questionId) {
    var questionType = data[questionId]['question_type'];
    if(questionType == 'short_answer' || questionType == 'paragraph'){
      var answerFormat = $("#text_answer_format").clone();
      answerFormat = removeId(answerFormat);
      answerFormat.removeClass("d-none");

    }
    // var answerFormat = $("#"+data[key]['question_type']+"_format").clone();
    return answerFormat;
  }
  function radioInputSet(el,name,id) {
    el.attr("name",name);
    el.attr("id",id);
    return el;
  }
  function optionLabelSet(el,label,id) {
    el.attr("for",id);
    el.html(label);
    return el;
  }

  function checkboxInputSet(el,name,id) {
    el.attr("id",id);
    el.attr("name",name);
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

      radioInput = radioInputSet(radioInput,questionId,id);
      optionLabel = optionLabelSet(optionLabel,val,id);
      el.append(optionFormatClone);
    }
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

      checkboxInput = checkboxInputSet(checkboxInput,id,id);
      optionLabel = optionLabelSet(optionLabel,val,id);
      el.append(optionFormatClone);
    }
    return el;
  }

  function addOption(el,questionId) { // el = answerFormat ex (#multiple_choice_format)

    if(data[questionId]['question_type'] == 'multiple_choice'){
      el = multipleChoiceOptionAdd(el,questionId);
    }else{
      el = checkboxOptionAdd(el, qustionId);
    }
  }

  function notAnsweredAnswerFormat(el,questionId) {  //el = Main Question Format
    var answerContainer = answerContainer(el);  // return answer container (.answer form)
    var answerFormat = $("#"+data[questionId]['question_type']+"_format").clone();
    answerFormat = removeId(answerFormat);
    answerFormat.removeClass("d-none");
    if(data[questionId]['question_type'] == "short_answer"){
      answerFormat.find("input").attr("name",questionId)
    }
    else if(data[questionId]['question_type'] == "paragraph"){
      answerFormat.find("textarea").attr("name",questionId)
    }
    else{
      answerFormat = addOption(answerFormat,questionId);
    }
  }

  function setUpAnswerFormat(el,questionId){
    var answerInput = el.find('.answer form');
    if(isAnswed){
      el = anseredAnserFormat(el,questionId);
    }else{
      el = notAnsweredAnswerFormat(el,questionId)
    }
    return el;
  }

  function loadHTMl() {
    var questionContainer = $('.questionContainer');
    var questionFormat = $('#questionFormat');
    $.each(data, function(key,val){

      questionIDs.push(key);
      questionOptionsIds.push(0);
      temp = questionFormat.clone();
      temp = setUpQuestion(temp,key);

      var answerInput = temp.find('.answer form');
      var answerFormat = $("#"+data[key]['question_type']+"_format").clone();
      answerFormat = removeId(answerFormat);
      answerFormat.removeClass('d-none');
      if(data[key]['question_type'] == "short_answer"){
        answerFormat.find("input").attr("name",key)
      }
      else if(data[key]['question_type'] == "paragraph"){
        answerFormat.find("textarea").attr("name",key)
      }
      answerInput.append(answerFormat);
      if(data[key]['question_type'] == "multiple_choice" || data[key]['question_type'] == "checkbox"){
        temp = addOptions(temp,key);
      }
      if('answer' in data[key]){
        temp = answerd(temp,key);
      }else{
        notAnswered(key);
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
      // loadHTMl();
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
      console.log(responseData);
      // window.location.replace("/question/"+ learnId +"/edit");

    },
    data: JSON.stringify(data)
  });

}
