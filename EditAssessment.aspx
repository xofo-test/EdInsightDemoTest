<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditAssessment.aspx.cs" Inherits="Edinsight.EditAssessment" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-title"><span class="icon">▧</span>Edit Assessment</div>
<div class="content">
  <div class="assessment-header">Assessment Name: Demo Benchmark &nbsp; | &nbsp; 6 Questions &nbsp; | &nbsp; Test Id: 8421</div>
  <div class="actions">
    <button class="btn" type="button" onclick="showModal('Finalize Assessment','This demo assessment is already finalized. You may preview the questions and mock answers.')">Finalize Assessment</button>
    <button class="btn blue" type="button" onclick="showToast('Mock assessment saved')">Save Changes</button>
  </div>
  <div class="success">You have successfully finalized the assessment. You may unlock the assessment for editing in the Manage Assessment screen, but doing so will delete any existing administration records linked to this assessment.</div>
  <div class="assessment-tabs"><button class="active">Print Test</button><button>Preview Online Test</button><button>Scoring Rubrics</button></div>

  <div class="question-row">
    <div class="question-row-head"><div>#</div><div>Question</div><div>Answers</div><div>Standards / Attributes</div></div>
    <div class="question-row-body"><div>1.</div><div><b>Question 1</b><br/>Which set of measurements contains three equivalent quantities?<br/><span class="small muted">Multiple Choice</span></div><div><span class="blue">Answers:</span><br/><span class="green-text">A - 3 feet, 4 feet, and 5 feet</span><br/>B - 1 meter, 7 meters, and 10 meters<br/>C - 1.5 inches, 1.5 inches, and 2.5 inches<br/>D - 7 centimeters, 7 centimeters, and 7 centimeters<br/>E - 6 miles, 6 miles, and 12 miles</div><div><span class="blue">Standards</span><br/>MA.6.M.1.1<br/><br/><b>Assigned Subjects</b><br/>Mathematics<br/><b>Grade</b><br/>06</div></div>
  </div>

  <div class="question-row">
    <div class="question-row-body"><div>2.</div><div><b>Question 2</b><br/>Explain why repeated measurements can improve confidence in an investigation.<br/><br/><b><u>Scoring Rubrics</u></b></div><div><span class="blue">Answers:</span><br/>0 Points - Student did not attempt the response.<br/>1 Point - Partial understanding is demonstrated.<br/>2 Points - Complete explanation with evidence.</div><div><span class="blue">Standards</span><br/>SC.6.N.1.2<br/>SC.6.N.1.4<br/><br/><b>Assigned Subjects</b><br/>Science</div></div>
  </div>

  <div class="question-row">
    <div class="question-row-body"><div>3.</div><div><b>Question 3</b><br/>What is the value of 6 × 7?<br/><br/><b><u>Scoring Rubrics</u></b></div><div><span class="blue">Answers:</span><br/>A - 36<br/><span class="green-text">B - 42</span><br/>C - 48<br/>D - 54</div><div><span class="blue">Standards</span><br/>MA.6.NSO.2.1<br/><br/><b>Tags</b><br/>Arithmetic, Number Sense</div></div>
  </div>

  <div class="question-row">
    <div class="question-row-body"><div>4.</div><div><b>Question 4</b><br/>Which fraction is equivalent to 1/2?</div><div><span class="blue">Answers:</span><br/>A - 1/3<br/><span class="green-text">B - 2/4</span><br/>C - 3/5<br/>D - 4/7</div><div><span class="blue">Standards</span><br/>MA.6.FR.1.1<br/><br/><b>Grade</b><br/>06</div></div>
  </div>

  <div class="question-row">
    <div class="question-row-body"><div>5.</div><div><b>Question 5</b><br/>Which sentence uses evidence to support a claim?</div><div><span class="blue">Answers:</span><br/><span class="green-text">C - The results increased by 12% after the change.</span><br/>Other choices are distractors.</div><div><span class="blue">Standards</span><br/>ELA.6.R.1.1<br/><br/><b>Difficulty</b><br/>Medium</div></div>
  </div>
</div>

<div class="modal" id="modal"><div class="modal-card"><div class="modal-head" id="modalTitle">Warning</div><div class="modal-body" id="modalBody"></div><div class="modal-actions"><button class="btn" onclick="hideModal()">Close</button><button class="btn blue" onclick="hideModal()">Continue</button></div></div></div>
<div class="toast" id="toast"></div>
<script>
function showModal(t,b){document.getElementById('modalTitle').innerText=t;document.getElementById('modalBody').innerText=b;document.getElementById('modal').style.display='block'}
function hideModal(){document.getElementById('modal').style.display='none'}
function showToast(msg){var t=document.getElementById('toast');t.innerText=msg;t.style.display='block';setTimeout(function(){t.style.display='none'},1800);}
</script>
</asp:Content>
