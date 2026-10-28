<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineTest.aspx.cs" Inherits="Edinsight.OnlineTest" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Online Test</title>
    <meta charset="utf-8" />
    <link href="Content/OnlineTest.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="exam">
    <div class="banner">
        <svg class="wave" viewBox="0 0 1542 78" preserveAspectRatio="none"><path d="M0 0H560C470 30 420 62 300 78H0z" fill="#3d97d6"/><path d="M300 78C420 62 470 30 560 0H640C560 26 500 62 380 78z" fill="#5fb3e2" opacity=".7"/></svg>
        <img src="Content/logo-mark.svg" alt="" />
        <span class="name"><b>ed</b>Insight</span>
    </div>
    <div class="meta">
        <span class="student">Student Name: Test Student</span>
        <span>Assessment Name: MR 6676</span>
        <span>Administration Name: Online Test Preview</span>
    </div>
    <div class="body">
        <div class="nav" id="nav"></div>
        <div class="main">
            <div class="tools">
                <span class="tool" title="Text size" onclick="toggleTextSize()">T&#8597;</span>
                <svg class="tool calc" viewBox="0 0 24 24"><circle cx="12" cy="12" r="11" fill="#bdbdbd"/><rect x="7" y="5" width="10" height="14" rx="1" fill="#333"/><rect x="8.5" y="6.5" width="7" height="3" fill="#cfe8cf"/><g fill="#eee"><rect x="8.5" y="11" width="2" height="1.6"/><rect x="11" y="11" width="2" height="1.6"/><rect x="13.5" y="11" width="2" height="1.6"/><rect x="8.5" y="13.5" width="2" height="1.6"/><rect x="11" y="13.5" width="2" height="1.6"/><rect x="13.5" y="13.5" width="2" height="1.6"/><rect x="8.5" y="16" width="2" height="1.6"/><rect x="11" y="16" width="2" height="1.6"/><rect x="13.5" y="16" width="2" height="1.6"/></g></svg>
                <svg class="tool" viewBox="0 0 28 28"><path d="M4 24l3-7L20 4l4 4-13 13z" fill="#ffe14d" stroke="#c9a400"/><path d="M4 24l3-7 4 4z" fill="#555"/><circle cx="14" cy="14" r="12" fill="none" stroke="#ffe14d" stroke-width="1.5" opacity=".6"/></svg>
                <select class="pick-color"><option>Yellow</option><option>Green</option><option>Blue</option><option>Pink</option></select>
                <svg class="tool pen" viewBox="0 0 28 28"><path d="M3 25c3-1 4-3 5-5l14-14 2 2-14 14c-2 1-4 2-7 3z" fill="#8b5a2b"/><path d="M3 25c1-2 3-3 5-5l2 2c-2 2-4 3-7 3z" fill="#c62828"/></svg>
                <select class="pick-size"><option>1</option><option>2</option><option>3</option></select>
            </div>
            <div class="strip"></div>
            <table class="stem">
                <tr class="title-row">
                    <td class="icon"><span class="speaker"><svg viewBox="0 0 24 24"><path d="M4 9h4l5-4v14l-5-4H4z" fill="#fff"/><path d="M16 8a5 5 0 0 1 0 8M18.5 5.5a8.5 8.5 0 0 1 0 13" fill="none" stroke="#fff" stroke-width="1.8"/></svg></span></td>
                    <td><span class="selected" id="title"></span></td>
                </tr>
                <tr class="text-row">
                    <td class="instruction" id="instruction"></td>
                    <td id="prompt"></td>
                </tr>
            </table>
            <div class="answers">
                <button class="next" type="button" onclick="next()">NEXT QUESTION</button>
                <div id="choices"></div>
            </div>
        </div>
    </div>
</div>
<div class="version">2026.09.0</div>
</form>
<script>
var questions = [
    { id: 16104843, instruction: 'Select all answers that apply', type: 'checkbox', choices: ['3 feet, 4 feet, and 5 feet', '1 meter, 7 meters, and 10 meters', '1.5 inches, 1.5 inches, and 2.5 inches', '7 centimeters, 7 centimeters, and 7 centimeters', '6 miles, 6 miles, and 12 miles'] },
    { id: 16139090, instruction: 'Type your answer in the box below', type: 'text' },
    { id: 16068856, instruction: 'Type your answer in the box below', type: 'text' },
    { id: 16216683, instruction: 'Select one answer', type: 'radio', choices: ['burner to pan to butter', 'burner to butter to pan', 'pan to burner to butter', 'butter to pan to burner'] },
    { id: 16104816, instruction: 'Select two answers', type: 'checkbox', choices: ['Everything happens for a reason.', 'Some tragedies are unavoidable.', 'The court system ensures justice.', 'Tragedies can have a positive result.', 'Laws are enacted to increase safety.'] },
    { id: 16205117, instruction: 'Select one answer', type: 'radio', choices: ['True', 'False'] }
];
var current = 0;
var responses = questions.map(function () { return { picked: {}, struck: {}, text: '' }; });

function el(tag, cls, text) {
    var e = document.createElement(tag);
    if (cls) e.className = cls;
    if (text) e.textContent = text;
    return e;
}

function renderNav() {
    var nav = document.getElementById('nav');
    nav.innerHTML = '';
    questions.forEach(function (q, i) {
        var a = el('a', null, 'Question ' + (i + 1));
        a.href = '#';
        a.onclick = function () { show(i); return false; };
        nav.appendChild(a);
    });
}

function show(i) {
    current = i;
    var q = questions[i], r = responses[i];
    document.getElementById('title').textContent = 'Question ' + (i + 1) + ' (#' + q.id + ')';
    document.getElementById('instruction').textContent = q.instruction;
    var box = document.getElementById('choices');
    box.innerHTML = '';
    if (q.type === 'text') {
        var area = el('textarea', 'essay');
        area.value = r.text;
        area.oninput = function () { r.text = area.value; };
        box.appendChild(area);
        return;
    }
    q.choices.forEach(function (text, n) {
        var letter = String.fromCharCode(65 + n);
        var row = el('div', 'choice' + (r.struck[n] ? ' struck' : ''));
        var strike = el('span', 'strike', 'abc');
        strike.title = 'Strike through';
        strike.onclick = function () { r.struck[n] = !r.struck[n]; row.classList.toggle('struck', r.struck[n]); };
        var input = el('input');
        input.type = q.type;
        input.name = 'q' + i;
        input.checked = !!r.picked[n];
        input.onchange = function () {
            if (q.type === 'radio') r.picked = {};
            r.picked[n] = input.checked;
        };
        row.appendChild(strike);
        row.appendChild(input);
        row.appendChild(el('span', 'letter', letter));
        row.appendChild(el('span', 'text', text));
        box.appendChild(row);
    });
}

function next() { show((current + 1) % questions.length); }

function toggleTextSize() { document.body.classList.toggle('large'); }

renderNav();
show(0);
</script>
</body>
</html>
