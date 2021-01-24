var questionIDs = [];
var questionIdFormat = "q_";
var questionOptionsIds = [];
var learnId = $("input[name='learn_id']").val();
var retriveURL = $("input[name='learn_id']").attr('url');
var answerSubmitUrl = $("input[name='learn_id']").attr('subUrl');
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


  function loadHTMl() {
    var questionContainer = $('.questionContainer');
    var questionFormat = $('#questionFormat');
    $.each(data, function(key,val){
      if(data[key]['question_type'] == 'short_answer' || data[key]['question_type'] == 'paragraph'){
        data[key]['answer'] = "";
      }else{
        data[key]['answer'] = [];
      }
      questionIDs.push(key);
      questionOptionsIds.push(0);
      temp = questionFormat.clone();
      temp.attr('id',key);
      temp.removeClass('d-none');
      temp.find(".question").html(val['question']);
      var answerInput = temp.find('.answer form');
      var answerFormat = $("#"+data[key]['question_type']+"_format").clone();
      answerFormat.attr("id","");
      answerFormat.attr("data_id",data[key]['question_type']+"_format");
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
