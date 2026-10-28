<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditAssessment.aspx.cs" Inherits="Edinsight.EditAssessment" MasterPageFile="~/Site.Master" Title="Edit Assessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<svg style="display:none">
    <symbol id="pencil" viewBox="0 0 12 12"><path d="M1 11l.7-3L8.5 1.2l2.3 2.3L4 10.3z" fill="#7cb342"/><path d="M1 11l.7-3 2.3 2.3z" fill="#f2c27a"/></symbol>
</svg>
<div class="page-head">
    <svg viewBox="0 0 30 30"><path d="M4 3h15l5 5v19H4z" fill="#eef6e6" stroke="#7cb342" stroke-width="1.5"/><circle cx="13" cy="15" r="5" fill="#fff" stroke="#3f8fd0" stroke-width="2"/><path d="M16.5 18.5L22 24" stroke="#3f8fd0" stroke-width="2.5"/></svg>
    Edit Assessment
</div>
<div class="lock-name"><svg viewBox="0 0 10 10"><rect x="1" y="4" width="8" height="6"/><path d="M3 4V3a2 2 0 0 1 4 0v1" fill="none" stroke="#8aa0b8"/></svg>Assessment Name - Test</div>
<span class="pdf-btn"><svg viewBox="0 0 10 10"><rect width="10" height="10" fill="#d9372b"/><text x="1" y="7" font-size="4" font-family="Arial" fill="#fff">PDF</text></svg>Print to PDF</span>
<div class="assess-title"><b>Assessment Name:</b> MR 6676 ( 6 Questions - Test Id: 11469)</div>
<div class="tab-strip">
    <a href="#" onclick="window.print();return false;">Print Test</a>
    <a href="OnlineTest.aspx">Preview Online Test</a>
</div>
<div class="finalized">You have successfully finalized the assessment. You may unlock the assessment for editing from the Manage Assessments screen, but doing so will delete any test administrations/scores linked to this assessment.</div>
<div class="bulk-row">
    <label><input type="checkbox" onclick="checkAll(this)" />All</label>
    <button class="grey-btn" type="button">Apply Standards</button>
    <button class="grey-btn" type="button">Apply Attributes</button>
</div>

<div class="questions">
    <div class="qrow">
        <div class="pick"><input type="checkbox" /></div>
        <div class="qbox"><table><tr>
            <td class="num">1.<svg class="pencil"><use href="#pencil"/></svg></td>
            <td class="qid">Question ID # 16104843<br />( Check All That Apply )<span>Kelly Math / Kelly Math</span></td>
            <td class="ans serif">
                <div class="ans-head"><svg class="pencil"><use href="#pencil"/></svg>Answers: <a href="#">Rationale</a></div>
                <p class="ok">A - 3 feet, 4 feet, and 5 feet</p>
                <p>B - 1 meter, 7 meters, and 10 meters</p>
                <p class="ok">C - 1.5 inches, 1.5 inches, and 2.5 inches</p>
                <p class="ok">D - 7 centimeters, 7 centimeters, and 7 centimeters</p>
                <p>E - 6 miles, 6 miles, and 12 miles</p>
            </td>
            <td class="std">
                <div class="std-head">Standards:</div>
                <table><tr><td class="code"><a href="#">MAFS.K.G.1.1</a></td><td>-- Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</td></tr></table>
            </td>
            <td class="attr">
                <b>Assigned Subjects</b>Business Education
                <b>Grade</b>03 - Third Grade
                <b>Tags:</b>11
                <b>Other Attributes:</b>Webb's: DOK Level 1<br />Bloom's: Analyzing/ Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded
            </td>
        </tr></table></div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" /></div>
        <div class="qbox"><table><tr>
            <td class="num">2.<svg class="pencil"><use href="#pencil"/></svg><a class="rubric-link" href="#">Scoring Rubrics</a></td>
            <td class="qid">Question ID # 16139090<br />( Essay )<span>OHS Core Assessment / Math Grade 3 Core</span></td>
            <td class="ans">
                <div class="ans-head"><svg class="pencil"><use href="#pencil"/></svg>Answers:</div>
                <p>0 Points - Student did not attempt either part.</p>
                <p>1 Points - Student demonstrated a partial understanding and attempted both parts but did not provide a correct explanation for Part 2 or an accurate drawing for Part 1.</p>
                <p>2 Points - Student demonstrated a partial understanding and provided a correct explanation for Part 2, but the drawing does not fit the problem or is not accurate for Part 1.</p>
                <p>3 Points - Student demonstrated a general understanding by answering both parts correctly but the response contains some work that is unclear.</p>
                <p>4 Points - Student demonstrated a thorough understanding by drawing a picture that correctly models the cuts of the pizza and provides a correct explanation as to why Tony and Mike ate the same amount of pizza.</p>
            </td>
            <td class="std">
                <div class="std-head">Standards:</div>
                <table>
                    <tr><td class="code"><a href="#">MAFS.K.G.1.1</a></td><td>-- Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</td></tr>
                    <tr><td class="code"><a href="#">MAFS.3.NF.1.1</a></td><td>-- Understand a fraction 1/b as the quantity formed by 1 part when a whole is partitioned into b equal parts; understand a fraction a/b as the quantity formed by a parts of size 1/b.</td></tr>
                    <tr><td class="code"><a href="#">MAFS.3.NF.1.3</a></td><td>-- Explain equivalence of fractions in special cases, and compare fractions by reasoning about their size.</td></tr>
                    <tr><td class="code"><a href="#">MA.3.NF.A.1</a></td><td>-- Understand a fraction 1/b as the quantity formed by 1 part when a whole is partitioned into b equal parts; understand a fraction a/b as the quantity formed by a parts of size 1/b.</td></tr>
                    <tr><td class="code"><a href="#">MA.3.NF.A.3</a></td><td>-- Explain equivalence of fractions in special cases, and compare fractions by reasoning about their size.</td></tr>
                </table>
            </td>
            <td class="attr">
                <b>Assigned Subjects</b>Business Education<br />Mathematics
                <b>Grade</b>03 - Third Grade
                <b>Tags:</b>11
                <b>Other Attributes:</b>Webb's: DOK Level 1<br />Bloom's: Analyzing/ Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded
            </td>
        </tr></table></div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" /></div>
        <div class="qbox"><table><tr>
            <td class="num">3.<svg class="pencil"><use href="#pencil"/></svg><a class="rubric-link" href="#">Scoring Rubrics</a></td>
            <td class="qid">Question ID # 16068856<br />( Extended Response )<span>MMS Language Arts / Beckel</span></td>
            <td class="ans indent">
                <div class="ans-head">Answers:</div>
                <p>0 Points - 0</p>
                <p>1 Points - 1</p>
                <p>2 Points - 2</p>
                <p>3 Points - 3</p>
                <p>4 Points - 4</p>
            </td>
            <td class="std">
                <div class="std-head">Standards:</div>
                <table><tr><td class="code"><a href="#">MAFS.K.G.1.1</a></td><td>-- Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</td></tr></table>
            </td>
            <td class="attr">
                <b>Assigned Subjects</b>Business Education
                <b>Grade</b>03 - Third Grade
                <b>Tags:</b>11
                <b>Other Attributes:</b>Webb's: DOK Level 1<br />Bloom's: Analyzing/ Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded
            </td>
        </tr></table></div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" /></div>
        <div class="qbox"><table><tr>
            <td class="num">4.<svg class="pencil"><use href="#pencil"/></svg></td>
            <td class="qid">Question ID # 16216683<br />( Multiple Choice )<span>SciFusion - Grade 4 / SC.4.P.11.1</span></td>
            <td class="ans">
                <div class="ans-head"><svg class="pencil"><use href="#pencil"/></svg>Answers: <a href="#">Rationale</a></div>
                <p class="ok">A - &nbsp;burner to pan to butter</p>
                <p>B - &nbsp;burner to butter to pan</p>
                <p>C - &nbsp;pan to burner to butter</p>
                <p>D - &nbsp;butter to pan to burner</p>
            </td>
            <td class="std">
                <div class="std-head">Standards:</div>
                <table>
                    <tr><td class="code"><a href="#">SC.4.P.11.1</a></td><td>-- Recognize that heat flows from a hot object to a cold object and that heat flow may cause materials to change temperature.</td></tr>
                    <tr><td class="code"><a href="#">MAFS.K.G.1.1</a></td><td>-- Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</td></tr>
                </table>
            </td>
            <td class="attr">
                <b>Assigned Subjects</b>Business Education<br />Science
                <b>Grade</b>03 - Third Grade<br />04 - Fourth Grade
                <b>Tags:</b>11
                <b>Other Attributes:</b>Webb's: DOK Level 1<br />Bloom's: Analyzing/ Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded
            </td>
        </tr></table></div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" /></div>
        <div class="qbox"><table><tr>
            <td class="num">5.<svg class="pencil"><use href="#pencil"/></svg></td>
            <td class="qid">Question ID # 16104816<br />( Pick Two )<span>MS Mornings / Grade 7</span></td>
            <td class="ans">
                <div class="ans-head"><svg class="pencil"><use href="#pencil"/></svg>Answers: <a href="#">Rationale</a></div>
                <p>A - Everything happens for a reason.</p>
                <p>B - Some tragedies are unavoidable.</p>
                <p>C - The court system ensures justice.</p>
                <p class="ok">D - Tragedies can have a positive result.</p>
                <p class="ok">E - Laws are enacted to increase safety.</p>
            </td>
            <td class="std">
                <div class="std-head">Standards:</div>
                <table>
                    <tr><td class="code"><a href="#">LAFS.7.RI.1.2</a></td><td>-- Determine two or more central ideas in a text and analyze their development over the course of the text; provide an objective summary of the text.</td></tr>
                    <tr><td class="code"><a href="#">MAFS.K.G.1.1</a></td><td>-- Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</td></tr>
                </table>
            </td>
            <td class="attr">
                <b>Assigned Subjects</b>Business Education<br />Language Arts
                <b>Grade</b>03 - Third Grade<br />07 - Seventh Grade
                <b>Tags:</b>11
                <b>Other Attributes:</b>Webb's: DOK Level 1<br />Bloom's: Analyzing/ Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded
            </td>
        </tr></table></div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" /></div>
        <div class="qbox"><table><tr>
            <td class="num">6.<svg class="pencil"><use href="#pencil"/></svg></td>
            <td class="qid">Question ID # 16205117<br />( True or False )<span>District Benchmark Secure / Spanish II</span></td>
            <td class="ans indent-sm">
                <div class="ans-head"><svg class="pencil"><use href="#pencil"/></svg>Answers: <a href="#">Rationale</a></div>
                <p>A - True</p>
                <p class="ok">B - False</p>
            </td>
            <td class="std indent-sm">
                <div class="std-head">Standards:</div>
                <table>
                    <tr><td class="code"><a href="#">MAFS.K.G.1.1</a></td><td>-- Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</td></tr>
                    <tr><td class="code"><a href="#">WL.K12.NM.2.4</a></td><td>-- Recognize words and phrases when used in context on familiar topics.</td></tr>
                </table>
            </td>
            <td class="attr">
                <b>Assigned Subjects</b>Business Education
                <b>Grade</b>03 - Third Grade
                <b>Tags:</b>11
                <b>Other Attributes:</b>Webb's: DOK Level 1<br />Bloom's: Analyzing/ Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded
            </td>
        </tr></table></div>
    </div>
</div>
<span class="top-btn" onclick="window.scrollTo(0, 0)">Top</span>
<script>
function checkAll(box) {
    document.querySelectorAll('.questions .pick input').forEach(function (c) { c.checked = box.checked; });
}
</script>
</asp:Content>
