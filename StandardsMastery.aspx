<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StandardsMastery.aspx.cs" Inherits="Edinsight.StandardsMastery" MasterPageFile="~/Site.Master" Title="Standards Mastery Report by Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <svg viewBox="0 0 30 30"><rect x="3" y="4" width="4" height="22" fill="#e8a33c"/><rect x="9" y="12" width="4" height="14" fill="#3f8fd0"/><rect x="15" y="8" width="4" height="18" fill="#58b14a"/><rect x="21" y="15" width="4" height="11" fill="#d9534f"/><rect x="2" y="26" width="25" height="1.5" fill="#555"/></svg>
    Standards Mastery Report by Class
</div>
<div class="report-meta">
    <div><span>Local Assessment</span>: 2026</div>
    <div><span>Student Group</span>: jj</div>
</div>
<div class="export-row">
    <svg class="file-icon" viewBox="0 0 20 24"><path d="M2 1h11l5 5v17H2z" fill="#fff" stroke="#2f78b8" stroke-width="1.4"/><text x="4" y="18" font-size="6.5" font-family="Arial" font-weight="bold" fill="#2f78b8">PDF</text></svg>
    <svg class="file-icon" viewBox="0 0 20 24"><path d="M2 1h11l5 5v17H2z" fill="#fff" stroke="#2f78b8" stroke-width="1.4"/><text x="3.5" y="18" font-size="6.5" font-family="Arial" font-weight="bold" fill="#2f78b8">CSV</text></svg>
    <button class="shadow-btn" type="button">Print Individual Student Reports to PDF</button>
</div>
<div class="filters">
    <label>Report Option</label><select><option>Standards Mastery</option></select>
    <label>Data Sources</label><select><option>All items checked</option></select>
    <label>Assessments</label><select><option>All items checked</option></select>
    <label>Standard Types</label><select><option>All items checked</option></select>
    <label>Content Types</label><select><option>All items checked</option></select>
</div>
<table class="levels">
    <tr><th>Level Name</th><th>Level Cutoff</th><th>Level Color</th></tr>
    <tr><td>75-100</td><td>75</td><td class="lv"><div class="lv-green"></div></td></tr>
    <tr><td>50-74</td><td>50</td><td class="lv"><div class="lv-yellow"></div></td></tr>
    <tr><td>0-49</td><td>0</td><td class="lv"><div class="lv-red"></div></td></tr>
</table>
<button class="shadow-btn hide-desc" type="button" onclick="toggleDescriptions(this)">HIDE DESCRIPTIONS</button>
<table class="mastery" id="masteryTable">
    <colgroup><col class="c-code" /><col class="c-desc" /><col class="c-avg" /><% foreach (var s in Students) { %><col class="c-stu" /><% } %></colgroup>
    <thead>
        <tr>
            <th>Standard Code</th>
            <th class="desc">Standard Description</th>
            <th class="avg">Class Average</th>
            <% foreach (var s in Students) { %><th class="student"><a href="#"><%: s %></a></th><% } %>
        </tr>
    </thead>
    <tbody>
    <% foreach (var r in Rows) { %>
        <tr<%= r.Squashed ? " class=\"squashed\"" : "" %>>
            <td class="code"><a href="#"><%: r.Code %></a></td>
            <td class="desc"><span><%: r.Description %></span></td>
            <td class="avg"><span><%: r.Average %>%</span></td>
            <% foreach (var score in r.Scores) { %><td class="score"><div class="<%= Level(score) %>"><%: score %>%</div></td><% } %>
        </tr>
    <% } %>
    </tbody>
</table>
<script>
function toggleDescriptions(btn) {
    var table = document.getElementById('masteryTable');
    var hide = !table.classList.contains('no-desc');
    table.classList.toggle('no-desc', hide);
    btn.innerText = hide ? 'SHOW DESCRIPTIONS' : 'HIDE DESCRIPTIONS';
}
</script>
</asp:Content>
