<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditAssessment.aspx.cs" Inherits="Edinsight.EditAssessment" MasterPageFile="~/Site.Master" Title="Edit Assessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<svg class="svg-sprite" aria-hidden="true" focusable="false">
    <symbol id="pencil" viewBox="0 0 12 12">
        <path d="M1 11l.7-3L8.5 1.2l2.3 2.3L4 10.3z" fill="#7cb342" />
        <path d="M1 11l.7-3 2.3 2.3z" fill="#f2c27a" />
    </symbol>
</svg>

<div class="page-head">
    <svg viewBox="0 0 30 30" aria-hidden="true"><path d="M4 3h15l5 5v19H4z" fill="#eef6e6" stroke="#7cb342" stroke-width="1.5" /><circle cx="13" cy="15" r="5" fill="#fff" stroke="#3f8fd0" stroke-width="2" /><path d="M16.5 18.5L22 24" stroke="#3f8fd0" stroke-width="2.5" /></svg>
    Edit Assessment
</div>

<div class="assess-bar">
    <span class="lock-name">
        <svg viewBox="0 0 10 10" aria-hidden="true"><rect x="1" y="4" width="8" height="6" rx="1" /><path d="M3 4V3a2 2 0 0 1 4 0v1" fill="none" stroke="#a9803a" stroke-width="1.2" /></svg>
        Assessment Name &#8211; Test
    </span>
    <button class="pdf-btn" type="button">
        <svg viewBox="0 0 10 10" aria-hidden="true"><rect width="10" height="10" rx="1" fill="#d9372b" /><text x="1" y="7" font-size="4" font-family="Arial" fill="#fff">PDF</text></svg>
        Print to PDF
    </button>
</div>

<div class="assess-title"><b>Assessment Name:</b> MR 6676 ( 6 Questions &#8211; Test Id: 11469)</div>

<div class="tab-strip">
    <a href="#" onclick="window.print();return false;">Print Test</a>
    <a href="OnlineTest.aspx">Preview Online Test</a>
</div>

<div class="finalized">You have successfully finalized the assessment. You may unlock the assessment for editing from the Manage Assessments screen, but doing so will delete any test administrations/scores linked to this assessment.</div>

<div class="bulk-row">
    <label><input type="checkbox" id="checkAll" onclick="checkAll(this)" /> All</label>
    <button class="grey-btn" type="button">Apply Standards</button>
    <button class="grey-btn" type="button">Apply Attributes</button>
</div>

<div class="questions">
    <div class="qrow">
        <div class="pick"><input type="checkbox" aria-label="Select question 1" /></div>
        <div class="num">1.<svg class="pencil"><use href="#pencil" /></svg></div>
        <div class="qid">Question ID # 16104843<span>( Check All That Apply )<br />Kelly Math / Kelly Math</span></div>
        <div class="ans">
            <div class="ans-head"><svg class="pencil"><use href="#pencil" /></svg>Answers: <a href="#">Rationale</a></div>
            <p class="ok">A &#8211; 3 feet, 4 feet, and 5 feet</p>
            <p>B &#8211; 1 meter, 7 meters, and 10 meters</p>
            <p class="ok">C &#8211; 1.5 inches, 1.5 inches, and 2.5 inches</p>
            <p class="ok">D &#8211; 7 centimeters, 7 centimeters, and 7 centimeters</p>
            <p>E &#8211; 6 miles, 6 miles, and 12 miles</p>
        </div>
        <div class="std">
            <div class="std-head">Standards:</div>
            <div class="std-item"><span class="code"><a href="#">MAFS.K.G.1.1</a></span><span class="txt">Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</span></div>
        </div>
        <div class="attr">
            <dl>
                <dt>Assigned Subjects</dt><dd>Business Education</dd>
                <dt>Grade</dt><dd>03 &#8211; Third Grade</dd>
                <dt>Tags:</dt><dd>11</dd>
                <dt>Other Attributes:</dt><dd>Webb's: DOK Level 1<br />Bloom's: Analyzing / Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded</dd>
            </dl>
        </div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" aria-label="Select question 2" /></div>
        <div class="num">2.<svg class="pencil"><use href="#pencil" /></svg><a class="rubric-link" href="#">Scoring Rubrics</a></div>
        <div class="qid">Question ID # 16139090<span>( Essay )<br />OHS Core Assessment / Math Grade 3 Core</span></div>
        <div class="ans">
            <div class="ans-head"><svg class="pencil"><use href="#pencil" /></svg>Answers:</div>
            <p><b>0 Points</b> &#8211; Student did not attempt either part.</p>
            <p><b>1 Point</b> &#8211; Student demonstrated a partial understanding and attempted both parts but did not provide a correct explanation for Part 2 or an accurate drawing for Part 1.</p>
            <p><b>2 Points</b> &#8211; Student demonstrated a partial understanding and provided a correct explanation for Part 2, but the drawing does not fit the problem or is not accurate for Part 1.</p>
            <p><b>3 Points</b> &#8211; Student demonstrated a general understanding by answering both parts correctly but the response contains some work that is unclear.</p>
            <p><b>4 Points</b> &#8211; Student demonstrated a thorough understanding by drawing a picture that correctly models the cuts of the pizza and provides a correct explanation as to why Tony and Mike ate the same amount of pizza.</p>
        </div>
        <div class="std">
            <div class="std-head">Standards:</div>
            <div class="std-item"><span class="code"><a href="#">MAFS.K.G.1.1</a></span><span class="txt">Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</span></div>
            <div class="std-item"><span class="code"><a href="#">MAFS.3.NF.1.1</a></span><span class="txt">Understand a fraction 1/b as the quantity formed by 1 part when a whole is partitioned into b equal parts; understand a fraction a/b as the quantity formed by a parts of size 1/b.</span></div>
            <div class="std-item"><span class="code"><a href="#">MAFS.3.NF.1.3</a></span><span class="txt">Explain equivalence of fractions in special cases, and compare fractions by reasoning about their size.</span></div>
        </div>
        <div class="attr">
            <dl>
                <dt>Assigned Subjects</dt><dd>Business Education<br />Mathematics</dd>
                <dt>Grade</dt><dd>03 &#8211; Third Grade</dd>
                <dt>Tags:</dt><dd>11</dd>
                <dt>Other Attributes:</dt><dd>Webb's: DOK Level 1<br />Bloom's: Analyzing / Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded</dd>
            </dl>
        </div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" aria-label="Select question 3" /></div>
        <div class="num">3.<svg class="pencil"><use href="#pencil" /></svg><a class="rubric-link" href="#">Scoring Rubrics</a></div>
        <div class="qid">Question ID # 16068856<span>( Extended Response )<br />MMS Language Arts / Beckel</span></div>
        <div class="ans">
            <div class="ans-head">Answers:</div>
            <p><b>0 Points</b> &#8211; 0</p>
            <p><b>1 Point</b> &#8211; 1</p>
            <p><b>2 Points</b> &#8211; 2</p>
            <p><b>3 Points</b> &#8211; 3</p>
            <p><b>4 Points</b> &#8211; 4</p>
        </div>
        <div class="std">
            <div class="std-head">Standards:</div>
            <div class="std-item"><span class="code"><a href="#">MAFS.K.G.1.1</a></span><span class="txt">Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</span></div>
        </div>
        <div class="attr">
            <dl>
                <dt>Assigned Subjects</dt><dd>Business Education</dd>
                <dt>Grade</dt><dd>03 &#8211; Third Grade</dd>
                <dt>Tags:</dt><dd>11</dd>
                <dt>Other Attributes:</dt><dd>Webb's: DOK Level 1<br />Bloom's: Analyzing / Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded</dd>
            </dl>
        </div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" aria-label="Select question 4" /></div>
        <div class="num">4.<svg class="pencil"><use href="#pencil" /></svg></div>
        <div class="qid">Question ID # 16216683<span>( Multiple Choice )<br />SciFusion &#8211; Grade 4 / SC.4.P.11.1</span></div>
        <div class="ans">
            <div class="ans-head"><svg class="pencil"><use href="#pencil" /></svg>Answers: <a href="#">Rationale</a></div>
            <p class="ok">A &#8211; burner to pan to butter</p>
            <p>B &#8211; burner to butter to pan</p>
            <p>C &#8211; pan to burner to butter</p>
            <p>D &#8211; butter to pan to burner</p>
        </div>
        <div class="std">
            <div class="std-head">Standards:</div>
            <div class="std-item"><span class="code"><a href="#">SC.4.P.11.1</a></span><span class="txt">Recognize that heat flows from a hot object to a cold object and that heat flow may cause materials to change temperature.</span></div>
            <div class="std-item"><span class="code"><a href="#">MAFS.K.G.1.1</a></span><span class="txt">Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</span></div>
        </div>
        <div class="attr">
            <dl>
                <dt>Assigned Subjects</dt><dd>Business Education<br />Science</dd>
                <dt>Grade</dt><dd>03 &#8211; Third Grade<br />04 &#8211; Fourth Grade</dd>
                <dt>Tags:</dt><dd>11</dd>
                <dt>Other Attributes:</dt><dd>Webb's: DOK Level 1<br />Bloom's: Analyzing / Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded</dd>
            </dl>
        </div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" aria-label="Select question 5" /></div>
        <div class="num">5.<svg class="pencil"><use href="#pencil" /></svg></div>
        <div class="qid">Question ID # 16104816<span>( Pick Two )<br />MS Mornings / Grade 7</span></div>
        <div class="ans">
            <div class="ans-head"><svg class="pencil"><use href="#pencil" /></svg>Answers: <a href="#">Rationale</a></div>
            <p>A &#8211; Everything happens for a reason.</p>
            <p>B &#8211; Some tragedies are unavoidable.</p>
            <p>C &#8211; The court system ensures justice.</p>
            <p class="ok">D &#8211; Tragedies can have a positive result.</p>
            <p class="ok">E &#8211; Laws are enacted to increase safety.</p>
        </div>
        <div class="std">
            <div class="std-head">Standards:</div>
            <div class="std-item"><span class="code"><a href="#">LAFS.7.RI.1.2</a></span><span class="txt">Determine two or more central ideas in a text and analyze their development over the course of the text; provide an objective summary of the text.</span></div>
            <div class="std-item"><span class="code"><a href="#">MAFS.K.G.1.1</a></span><span class="txt">Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</span></div>
        </div>
        <div class="attr">
            <dl>
                <dt>Assigned Subjects</dt><dd>Business Education<br />Language Arts</dd>
                <dt>Grade</dt><dd>03 &#8211; Third Grade<br />07 &#8211; Seventh Grade</dd>
                <dt>Tags:</dt><dd>11</dd>
                <dt>Other Attributes:</dt><dd>Webb's: DOK Level 1<br />Bloom's: Analyzing / Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded</dd>
            </dl>
        </div>
    </div>

    <div class="qrow">
        <div class="pick"><input type="checkbox" aria-label="Select question 6" /></div>
        <div class="num">6.<svg class="pencil"><use href="#pencil" /></svg></div>
        <div class="qid">Question ID # 16205117<span>( True or False )<br />District Benchmark Secure / Spanish II</span></div>
        <div class="ans">
            <div class="ans-head"><svg class="pencil"><use href="#pencil" /></svg>Answers: <a href="#">Rationale</a></div>
            <p>A &#8211; True</p>
            <p class="ok">B &#8211; False</p>
        </div>
        <div class="std">
            <div class="std-head">Standards:</div>
            <div class="std-item"><span class="code"><a href="#">MAFS.K.G.1.1</a></span><span class="txt">Describe objects in the environment using names of shapes, and describe the relative positions of these objects using terms such as above, below, beside, in front of, behind, and next to.</span></div>
            <div class="std-item"><span class="code"><a href="#">WL.K12.NM.2.4</a></span><span class="txt">Recognize words and phrases when used in context on familiar topics.</span></div>
        </div>
        <div class="attr">
            <dl>
                <dt>Assigned Subjects</dt><dd>Business Education</dd>
                <dt>Grade</dt><dd>03 &#8211; Third Grade</dd>
                <dt>Tags:</dt><dd>11</dd>
                <dt>Other Attributes:</dt><dd>Webb's: DOK Level 1<br />Bloom's: Analyzing / Analysis<br />Difficulty: Medium<br />Item Alignment: Scaffolded</dd>
            </dl>
        </div>
    </div>
</div>

<span class="top-btn" onclick="window.scrollTo(0, 0)">Top</span>

<script>
function checkAll(box) {
    document.querySelectorAll('.questions .pick input').forEach(function (c) { c.checked = box.checked; });
}
</script>
</asp:Content>
