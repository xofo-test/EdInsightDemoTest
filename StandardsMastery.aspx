<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StandardsMastery.aspx.cs" Inherits="Edinsight.StandardsMastery" MasterPageFile="~/Site.Master" Title="Standards Mastery Report by Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <svg viewBox="0 0 30 30" aria-hidden="true"><rect x="3" y="4" width="4" height="22" fill="#e8a33c" /><rect x="9" y="12" width="4" height="14" fill="#3f8fd0" /><rect x="15" y="8" width="4" height="18" fill="#58b14a" /><rect x="21" y="15" width="4" height="11" fill="#d9534f" /><rect x="2" y="26" width="24" height="1.5" fill="#5b768a" /></svg>
    Standards Mastery Report by Class
</div>

<dl class="report-meta">
    <dt>Local Assessment</dt>
    <dd>2026</dd>
    <dt>Student Group</dt>
    <dd>jj</dd>
</dl>

<div class="export-row">
    <svg class="file-icon" viewBox="0 0 20 24" role="img" aria-label="Export PDF"><path d="M2 1h11l5 5v17H2z" fill="#fff" stroke="#2f78b8" stroke-width="1.4" /><text x="4" y="18" font-size="6.5" font-family="Arial" font-weight="bold" fill="#2f78b8">PDF</text></svg>
    <svg class="file-icon" viewBox="0 0 20 24" role="img" aria-label="Export CSV"><path d="M2 1h11l5 5v17H2z" fill="#fff" stroke="#2f78b8" stroke-width="1.4" /><text x="3.5" y="18" font-size="6.5" font-family="Arial" font-weight="bold" fill="#2f78b8">CSV</text></svg>
    <button class="shadow-btn" type="button">Print Individual Student Reports to PDF</button>
</div>

<div class="filters">
    <label for="f-report">Report Option</label>
    <select id="f-report"><option>Standards Mastery</option></select>

    <label for="f-sources">Data Sources</label>
    <select id="f-sources"><option>All items checked</option></select>

    <label for="f-assess">Assessments</label>
    <select id="f-assess"><option>All items checked</option></select>

    <label for="f-types">Standard Types</label>
    <select id="f-types"><option>All items checked</option></select>

    <label for="f-content">Content Types</label>
    <select id="f-content"><option>All items checked</option></select>
</div>

<table class="levels">
    <thead>
        <tr><th>Level Name</th><th>Level Cutoff</th><th>Level Color</th></tr>
    </thead>
    <tbody>
        <tr><td>75-100</td><td>75</td><td class="lv"><span class="lv-green"></span></td></tr>
        <tr><td>50-74</td><td>50</td><td class="lv"><span class="lv-yellow"></span></td></tr>
        <tr><td>0-49</td><td>0</td><td class="lv"><span class="lv-red"></span></td></tr>
    </tbody>
</table>

<button class="shadow-btn hide-desc" type="button" id="descToggle" onclick="toggleDescriptions(this)">HIDE DESCRIPTIONS</button>

<div class="table-scroll">
    <table class="mastery" id="masteryTable">
        <colgroup>
            <col class="c-code" />
            <col class="c-desc" />
            <col class="c-avg" />
            <% foreach (var s in Students) { %><col class="c-stu" /><% } %>
        </colgroup>
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
            <tr>
                <td class="code"><a href="#"><%: r.Code %></a></td>
                <td class="desc"><%: r.Description %></td>
                <td class="avg"><%: r.Average %>%</td>
                <% foreach (var score in r.Scores) { %><td class="score"><div class="score-chip <%= Level(score) %>"><%: score %>%</div></td><% } %>
            </tr>
        <% } %>
        </tbody>
    </table>
</div>

<script>
function toggleDescriptions(btn) {
    var table = document.getElementById('masteryTable');
    var hide = !table.classList.contains('no-desc');
    table.classList.toggle('no-desc', hide);
    btn.textContent = hide ? 'SHOW DESCRIPTIONS' : 'HIDE DESCRIPTIONS';
}
</script>
</asp:Content>
