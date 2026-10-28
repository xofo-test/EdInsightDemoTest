<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StandardsMastery.aspx.cs" Inherits="Edinsight.StandardsMastery" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-title"><span class="icon">▣</span>Standards Mastery Report by Class</div>
<div class="content">
    <div class="heading-info">Local Assessment&nbsp; : 2026<br/>Student Group&nbsp; : Demo - Grade 6 Science</div>
    <div class="actions">
        <button class="btn" type="button" onclick="showToast('Mock PDF export started')">▣ Print to PDF</button>
        <button class="btn" type="button" onclick="showToast('Mock CSV export started')">▤ Print to CSV</button>
        <button class="btn blue" type="button" onclick="showToast('Mock individual reports generated')">Print Individual Student Reports to PDF</button>
    </div>
    <div class="filter-grid">
        <label>Report Option</label><select><option>Standards Mastery</option><option>Achievement Levels</option><option>Pass or Fail</option></select>
        <label>Data Sources</label><select><option>All items checked</option><option>Local Assessments</option><option>District Assessments</option></select>
        <label>Assessment</label><select><option>2026 Science Benchmark</option><option>Quarter 1 Assessment</option></select>
        <label>Student Group</label><select><option>Demo - Grade 6 Science</option><option>All Grade 6</option></select>
        <label>Assessment Type</label><select><option>All assessment types</option><option>Local Assessment</option></select>
        <label>Content Types</label><select><option>All items checked</option><option>Selected standards</option></select>
    </div>
    <table class="legend">
        <tr><th>Level Name</th><th>Level Cutoff</th><th>Level Color</th></tr>
        <tr><td>75-100</td><td>75</td><td class="swatch greenbg"></td></tr>
        <tr><td>50-74</td><td>50</td><td class="swatch yellowbg"></td></tr>
        <tr><td>0-49</td><td>0</td><td class="swatch redbg"></td></tr>
    </table>
    <button class="btn blue hide-desc" type="button" onclick="toggleDescriptions()">HIDE DESCRIPTIONS</button>
    <table class="mastery-table" id="masteryTable">
        <thead><tr><th class="code">Standard Code</th><th class="desc">Standard Description</th><th class="avg">Class Average</th><th><div class="vertical">Jordan, Avery</div></th><th><div class="vertical">Maya, Chen</div></th><th><div class="vertical">Noah, Patel</div></th></tr></thead>
        <tbody>
            <tr><td class="code">SC.6.N.1.1</td><td class="desc">Define a problem, use reference materials, plan investigations, collect data and defend conclusions.</td><td class="avg">67%</td><td class="score yellow">67%</td><td class="score red">42%</td><td class="score green">82%</td></tr>
            <tr><td class="code">SC.6.N.1.2</td><td class="desc">Explain why scientific investigations should be replicable.</td><td class="avg">74%</td><td class="score green">80%</td><td class="score yellow">64%</td><td class="score green">78%</td></tr>
            <tr><td class="code">SC.6.N.1.4</td><td class="desc">Discuss, compare and negotiate methods used to collect and analyze information.</td><td class="avg">55%</td><td class="score yellow">55%</td><td class="score red">38%</td><td class="score yellow">70%</td></tr>
            <tr><td class="code">SC.6.P.13.1</td><td class="desc">Investigate and describe types of forces and their effects on objects.</td><td class="avg">81%</td><td class="score green">88%</td><td class="score green">79%</td><td class="score green">76%</td></tr>
            <tr><td class="code">MA.6.NSO.2.1</td><td class="desc">Extend prior understanding of multiplication and division to solve practical problems.</td><td class="avg">48%</td><td class="score red">45%</td><td class="score yellow">52%</td><td class="score red">47%</td></tr>
            <tr><td class="code">ELA.6.R.1.1</td><td class="desc">Analyze how text structure and evidence contribute to meaning and understanding.</td><td class="avg">73%</td><td class="score green">77%</td><td class="score yellow">66%</td><td class="score green">76%</td></tr>
            <tr><td class="code">ELA.6.V.1.3</td><td class="desc">Apply knowledge of context clues, figurative language and word relationships.</td><td class="avg">61%</td><td class="score yellow">61%</td><td class="score red">49%</td><td class="score green">74%</td></tr>
        </tbody>
    </table>
</div>
<div class="toast" id="toast"></div>
<script>
function toggleDescriptions(){
  var cells=document.querySelectorAll('#masteryTable .desc');
  var hidden=cells[0].style.display==='none';
  cells.forEach(function(c){c.style.display=hidden?'table-cell':'none';});
  document.querySelector('.hide-desc').innerText=hidden?'HIDE DESCRIPTIONS':'SHOW DESCRIPTIONS';
}
function showToast(msg){var t=document.getElementById('toast');t.innerText=msg;t.style.display='block';setTimeout(function(){t.style.display='none'},1800);}
</script>
</asp:Content>
