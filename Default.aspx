<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Edinsight.Default" MasterPageFile="~/Site.Master" Title="edInsight Demo Prototype" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-head">
        <svg viewBox="0 0 30 30" aria-hidden="true"><rect x="3" y="4" width="24" height="20" rx="2" fill="#eef6fb" stroke="#2f78b8" stroke-width="1.5" /><rect x="7" y="9" width="16" height="2" fill="#2f78b8" /><rect x="7" y="14" width="10" height="2" fill="#7fb7dd" /><rect x="7" y="19" width="13" height="2" fill="#7fb7dd" /></svg>
        edInsight Demo Prototype
    </div>

    <p class="lede">This demo reproduces the visual style and interaction patterns of the supplied edInsight pages using mock data only.</p>

    <div class="screen-grid">
        <a class="screen-card" href="StandardsMastery.aspx">
            <span class="screen-card-title">Standards Mastery Report</span>
            <span class="screen-card-meta">Report by class &#183; <%: Edinsight.StandardsMastery.Students.Length %> students</span>
            <span class="screen-card-cta">Open report <span aria-hidden="true">&#8594;</span></span>
        </a>
        <a class="screen-card" href="OnlineTest.aspx">
            <span class="screen-card-title">Online Test</span>
            <span class="screen-card-meta">MR 6676 &#183; 6 questions &#183; Online Test Preview</span>
            <span class="screen-card-cta">Open test <span aria-hidden="true">&#8594;</span></span>
        </a>
        <a class="screen-card" href="EditAssessment.aspx">
            <span class="screen-card-title">Edit Assessment</span>
            <span class="screen-card-meta">Assessment MR 6676 &#183; Test Id 11469 &#183; finalized</span>
            <span class="screen-card-cta">Open assessment <span aria-hidden="true">&#8594;</span></span>
        </a>
    </div>
</asp:Content>
