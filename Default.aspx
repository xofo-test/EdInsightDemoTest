<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Edinsight.Default" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-title"><span class="icon">⌂</span>edInsight Demo Prototype</div>
    <div class="content">
        <div class="assessment-header">Three-page prototype for XOFO testing</div>
        <p class="muted">This demo reproduces the visual style and interaction patterns of the supplied edInsight pages using mock data only.</p>
        <div class="actions">
            <a class="btn blue" href="StandardsMastery.aspx">Open Standards Mastery Report</a>
            <a class="btn blue" href="OnlineTest.aspx">Open Online Test</a>
            <a class="btn blue" href="EditAssessment.aspx">Open Edit Assessment</a>
        </div>
        <div style="margin-top:25px;border:1px solid #c9dce3;padding:14px;background:#f7fbfd">
            <b>Navigation</b>
            <p>Use the top navigation or the buttons above to move between all three ASPX pages. No live EdInsight services or production data are used.</p>
        </div>
    </div>
</asp:Content>
