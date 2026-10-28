<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineTest.aspx.cs" Inherits="Edinsight.OnlineTest" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-title"><span class="icon">▣</span>Online Test</div>
<div class="content">
  <div class="exam-shell">
    <div class="exam-meta"><span>Student Name: Demo Student</span><span>Assessment Name: MR 8421</span><span>Administration Name: Online Test Preview</span></div>
    <div class="exam-body">
      <div class="question-list">
        <a href="#" class="active" onclick="selectQuestion(1);return false;">Question 1</a>
        <a href="#" onclick="selectQuestion(2);return false;">Question 2</a>
        <a href="#" onclick="selectQuestion(3);return false;">Question 3</a>
        <a href="#" onclick="selectQuestion(4);return false;">Question 4</a>
        <a href="#" onclick="selectQuestion(5);return false;">Question 5</a>
        <a href="#" onclick="selectQuestion(6);return false;">Question 6</a>
      </div>
      <div class="question-panel">
        <div class="exam-tools"><span class="toolbox">Tᵀ</span><span class="toolbox">▦</span><span class="toolbox">✎</span><select style="width:100px"><option>Yellow</option><option>Green</option><option>Blue</option></select><select style="width:60px"><option>1</option><option>2</option></select></div>
        <div class="question-card">
          <div class="question-title" id="questionTitle">Question 1 (Demo)</div>
          <div class="question-text" id="questionText">Which set of measurements contains three equivalent quantities?</div>
          <div class="choices" id="choices">
            <label class="choice"><input type="radio" name="answer" value="A"> A&nbsp;&nbsp; 3 feet, 4 feet, and 5 feet</label>
            <label class="choice"><input type="radio" name="answer" value="B"> B&nbsp;&nbsp; 1 meter, 7 meters, and 10 meters</label>
            <label class="choice"><input type="radio" name="answer" value="C"> C&nbsp;&nbsp; 1.5 inches, 1.5 inches, and 2.5 inches</label>
            <label class="choice"><input type="radio" name="answer" value="D"> D&nbsp;&nbsp; 7 centimeters, 7 centimeters, and 7 centimeters</label>
            <label class="choice"><input type="radio" name="answer" value="E"> E&nbsp;&nbsp; 6 miles, 6 miles, and 12 miles</label>
          </div>
          <button class="next" type="button" onclick="nextQuestion()">NEXT QUESTION</button>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
var qs=[
 {t:'Question 1 (Demo)',q:'Which set of measurements contains three equivalent quantities?',a:['3 feet, 4 feet, and 5 feet','1 meter, 7 meters, and 10 meters','1.5 inches, 1.5 inches, and 2.5 inches','7 centimeters, 7 centimeters, and 7 centimeters','6 miles, 6 miles, and 12 miles']},
 {t:'Question 2 (Demo)',q:'Which statement best describes a renewable resource?',a:['It can be replaced naturally over time.','It can only be found underground.','It is always unlimited.','It is created by machines.','It cannot be reused.']},
 {t:'Question 3 (Demo)',q:'What is the value of 6 × 7?',a:['36','42','48','54','56']},
 {t:'Question 4 (Demo)',q:'Which fraction is equivalent to 1/2?',a:['1/3','2/4','3/5','4/7','5/8']},
 {t:'Question 5 (Demo)',q:'Which sentence uses evidence to support a claim?',a:['The experiment was interesting.','I think the answer is correct.','The results increased by 12% after the change.','Science is important.','The chart looks nice.']},
 {t:'Question 6 (Demo)',q:'Which word is closest in meaning to “observe”?',a:['Ignore','Measure carefully','Forget','Guess randomly','Replace']}
];
var current=0;
function render(){var q=qs[current];document.getElementById('questionTitle').innerText=q.t;document.getElementById('questionText').innerText=q.q;var h='';q.a.forEach(function(x,i){h+='<label class="choice"><input type="radio" name="answer" value="'+String.fromCharCode(65+i)+'"> '+String.fromCharCode(65+i)+'&nbsp;&nbsp; '+x+'</label>';});document.getElementById('choices').innerHTML=h;document.querySelectorAll('.question-list a').forEach(function(a,i){a.classList.toggle('active',i===current)});}
function selectQuestion(n){current=n-1;render()}
function nextQuestion(){current=(current+1)%qs.length;render()}
</script>
</asp:Content>
