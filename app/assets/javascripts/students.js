$(document).ready(function() {
  // //Setup FB SDK
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '150302955316986',
      xfbml      : true,
      version    : 'v2.4'
    });

  //Initialize Game

  Student = function(name,facebookID) {
    this.name = name
    this.facebookID = facebookID
  }

  Student.prototype = {

  }
  //Student Model Class

  //Build View with 4 students, Choose chosen student, & Retrieve their image
  var students = [];
  $.ajax({
    method: "GET",
    url: "/students",
    dataType: "json"
  }).done(function(studentsJsonArray) {
      console.log("Response successful")
      console.log(studentsJsonArray)
      startGame(studentsJsonArray);
    // for(i=0;i<studentsJsonArray.length;i++) {
    // }
  });

  function startGame(students) {
    console.log(students)
    // //Game Controller
    var randomIndexes = getRandomInts(students.length,4);
    $('#1').html(students[randomIndexes[0]].name);
    $('#2').html(students[randomIndexes[1]].name);
    $('#3').html(students[randomIndexes[2]].name);
    $('#4').html(students[randomIndexes[3]].name);
    var chosenAnswerIndex = Math.floor(Math.random()*randomIndexes.length);
    var chosenStudent = students[randomIndexes[chosenAnswerIndex]];
    console.log("ChosenAnswerId "+ chosenAnswerIndex)
    console.log(chosenStudent)
    // $('#photo').attr("src",chosenStudent.photo_url);


    FB.api('/'+chosenStudent.facebook_id+'/picture', 'GET', {}, function(response) {
      console.log("inside repsonse")
      console.log(response)
      $('#photo').attr("src",response.data.url);
    })
    //Add Listeners to Answer Choices & specify if correct/incorrect when clicked
    $(".ans").click(function(e){
        var clickedId = e.target.id;
        console.log(clickedId == chosenAnswerIndex.toString())
        if(clickedId == chosenAnswerIndex.toString()) {
          $("#responseMessage").html('<div class="alert alert-success alert-dismissable"><button aria-hidden="true" data-dismiss="alert" class="close" type="button">× Correct</button></div>')
        } else {
          $("#responseMessage").html('<div id="incorrect" class="alert alert-danger alert-dismissable"><button aria-hidden="true" data-dismiss="alert" class="close" type="button">× Incorrect</button></div>')
        }
    });

  function getRandomInts(max,count) {
    var chosenNums = [];
    while(chosenNums.length < count){
      var num=Math.floor(Math.random()*max); var alreadyChosen=false;
      for(var i=0;i<chosenNums.length;i++) {
        if(chosenNums[i]==num){alreadyChosen=true;break}
      }
      if(!alreadyChosen)chosenNums[chosenNums.length]=num;
    }
    return chosenNums
  }
};
};
});
