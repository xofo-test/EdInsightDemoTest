<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineTest.aspx.cs" Inherits="Edinsight.OnlineTest" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Online Test &#8212; MR 6676</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/OnlineTest.css" rel="stylesheet" />
</head>
<body class="exam-page">
<form id="form1" runat="server">
<div class="exam">
    <div class="exam-banner">
        <svg class="wave" viewBox="0 0 1542 78" preserveAspectRatio="none" aria-hidden="true">
            <path d="M0 0H560C470 30 420 62 300 78H0z" fill="#3d97d6" />
            <path d="M300 78C420 62 470 30 560 0H640C560 26 500 62 380 78z" fill="#5fb3e2" opacity=".55" />
        </svg>
        <span class="logo">
            <img src="Content/logo-mark.svg" alt="" />
        </span>
        <span class="brand-name"><b>ed</b>Insight</span>
    </div>

    <div class="exam-meta">
        <div class="meta-item"><span class="meta-label">Student Name:</span><span class="meta-value">Test Student</span></div>
        <div class="meta-item"><span class="meta-label">Assessment Name:</span><span class="meta-value">MR 6676</span></div>
        <div class="meta-item"><span class="meta-label">Administration Name:</span><span class="meta-value">Online Test Preview</span></div>
    </div>

    <div class="exam-body">
        <nav class="qnav" id="nav" aria-label="Questions"></nav>

        <div class="exam-main">
            <div class="tools">
                <button class="tool tool-size" type="button" title="Text size" onclick="toggleTextSize()">T&#8597;</button>
                <button class="tool" type="button" title="Calculator">
                    <svg viewBox="0 0 24 24" aria-hidden="true"><circle cx="12" cy="12" r="11" fill="#bdbdbd" /><rect x="7" y="5" width="10" height="14" rx="1" fill="#333" /><rect x="8.5" y="6.5" width="7" height="3" fill="#cfe8cf" /><g fill="#eee"><rect x="8.5" y="11" width="2" height="1.6" /><rect x="11" y="11" width="2" height="1.6" /><rect x="13.5" y="11" width="2" height="1.6" /><rect x="8.5" y="13.5" width="2" height="1.6" /><rect x="11" y="13.5" width="2" height="1.6" /><rect x="13.5" y="13.5" width="2" height="1.6" /><rect x="8.5" y="16" width="2" height="1.6" /><rect x="11" y="16" width="2" height="1.6" /><rect x="13.5" y="16" width="2" height="1.6" /></g></svg>
                </button>
                <span class="tool-sep"></span>
                <button class="tool" type="button" title="Highlighter">
                    <svg viewBox="0 0 28 28" aria-hidden="true"><path d="M4 24l3-7L20 4l4 4-13 13z" fill="#ffe14d" stroke="#c9a400" /><path d="M4 24l3-7 4 4z" fill="#555" /><circle cx="14" cy="14" r="12" fill="none" stroke="#ffe14d" stroke-width="1.5" opacity=".6" /></svg>
                </button>
                <select class="pick-color" aria-label="Highlighter color">
                    <option>Yellow</option><option>Green</option><option>Blue</option><option>Pink</option>
                </select>
                <button class="tool" type="button" title="Pen">
                    <svg viewBox="0 0 28 28" aria-hidden="true"><path d="M3 25c3-1 4-3 5-5l14-14 2 2-14 14c-2 1-4 2-7 3z" fill="#8b5a2b" /><path d="M3 25c1-2 3-3 5-5l2 2c-2 2-4 3-7 3z" fill="#c62828" /></svg>
                </button>
                <select class="pick-size" aria-label="Pen size">
                    <option>1</option><option>2</option><option>3</option>
                </select>
            </div>

            <div class="stem">
                <div class="stem-head">
                    <button class="speaker-btn" type="button" title="Play question audio">
                        <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M4 9h4l5-4v14l-5-4H4z" fill="#fff" /><path d="M16 8a5 5 0 0 1 0 8M18.5 5.5a8.5 8.5 0 0 1 0 13" fill="none" stroke="#fff" stroke-width="1.8" /></svg>
                    </button>
                    <span class="stem-title" id="title"></span>
                </div>
                <div class="stem-body">
                    <div class="instruction" id="instruction"></div>
                    <div class="prompt" id="prompt"></div>
                </div>
            </div>

            <div class="answers">
                <button class="next" type="button" onclick="nextQuestion()">NEXT QUESTION</button>
                <div id="choices"></div>
            </div>
        </div>
    </div>
</div>

<div class="exam-foot">
    <span>2026.09.0</span>
</div>

<script>
var questions = [
    {
        id: 16104843,
        instruction: 'Select all answers that apply',
        type: 'checkbox',
        prompt: 'Which of the following sets of measurements could be the side lengths of a right triangle?',
        choices: [
            '3 feet, 4 feet, and 5 feet',
            '1 meter, 7 meters, and 10 meters',
            '1.5 inches, 1.5 inches, and 2.5 inches',
            '7 centimeters, 7 centimeters, and 7 centimeters',
            '6 miles, 6 miles, and 12 miles'
        ]
    },
    {
        id: 16139090,
        instruction: 'Type your answer in the box below',
        type: 'text',
        prompt: 'Tony and Mike each ate the same amount of a pizza. Draw a picture of how the pizza could have been cut, and explain why Tony and Mike ate the same amount.'
    },
    {
        id: 16068856,
        instruction: 'Type your answer in the box below',
        type: 'text',
        prompt: 'Explain how you know your answer is correct. Use details from the passage to support your response.'
    },
    {
        id: 16216683,
        instruction: 'Select one answer',
        type: 'radio',
        prompt: 'A pan of butter is placed on a hot stove burner. Which of these correctly shows the flow of heat?',
        choices: [
            'burner to pan to butter',
            'burner to butter to pan',
            'pan to burner to butter',
            'butter to pan to burner'
        ]
    },
    {
        id: 16104816,
        instruction: 'Select two answers',
        type: 'checkbox',
        prompt: 'Which two statements best express the ideas the author develops in the article?',
        choices: [
            'Everything happens for a reason.',
            'Some tragedies are unavoidable.',
            'The court system ensures justice.',
            'Tragedies can have a positive result.',
            'Laws are enacted to increase safety.'
        ]
    },
    {
        id: 16205117,
        instruction: 'Select one answer',
        type: 'radio',
        prompt: 'The author claims that laws are enacted to increase safety. Is this claim supported by the article?',
        choices: ['True', 'False']
    }
];

var state = questions.map(function () { return { picked: {}, struck: {}, text: '' }; });
var current = 0;

function make(tag, className, text) {
    var node = document.createElement(tag);
    if (className) { node.className = className; }
    if (text) { node.textContent = text; }
    return node;
}

function renderNav() {
    var nav = document.getElementById('nav');
    nav.innerHTML = '';
    questions.forEach(function (q, i) {
        var link = make('a');
        link.href = '#';
        link.setAttribute('data-index', i);
        link.appendChild(make('span', 'dot'));
        link.appendChild(make('span', null, 'Question ' + (i + 1)));
        link.onclick = function (event) {
            event.preventDefault();
            show(i);
        };
        nav.appendChild(link);
    });
}

function markActive() {
    var links = document.querySelectorAll('#nav a');
    for (var i = 0; i < links.length; i++) {
        links[i].classList.toggle('is-active', i === current);
    }
}

function refreshChoiceStates(rows) {
    rows.forEach(function (row) {
        var input = row.querySelector('input');
        row.classList.toggle('is-checked', !!input.checked);
    });
}

function show(index) {
    current = index;
    var q = questions[index];
    var answer = state[index];

    document.getElementById('title').textContent = 'Question ' + (index + 1) + ' (#' + q.id + ')';
    document.getElementById('instruction').textContent = q.instruction;
    document.getElementById('prompt').textContent = q.prompt;

    var box = document.getElementById('choices');
    box.innerHTML = '';

    if (q.type === 'text') {
        var area = make('textarea', 'essay');
        area.value = answer.text;
        area.placeholder = 'Type your answer here';
        area.setAttribute('aria-label', 'Your answer');
        area.oninput = function () { answer.text = area.value; };
        box.appendChild(area);
    } else {
        var rows = [];
        q.choices.forEach(function (choiceText, n) {
            var letter = String.fromCharCode(65 + n);
            var row = make('div', 'choice');
            var strike = make('button', 'strike', 'abc');
            strike.type = 'button';
            strike.title = 'Strike through this answer';
            strike.setAttribute('aria-pressed', 'false');
            strike.onclick = function () {
                answer.struck[n] = !answer.struck[n];
                row.classList.toggle('struck', answer.struck[n]);
                strike.setAttribute('aria-pressed', String(!!answer.struck[n]));
            };

            var input = make('input');
            input.type = q.type;
            input.name = 'q' + index;
            input.checked = !!answer.picked[n];
            input.setAttribute('aria-label', 'Answer ' + letter);
            input.onchange = function () {
                if (q.type === 'radio') { answer.picked = {}; }
                answer.picked[n] = input.checked;
                refreshChoiceStates(rows);
            };

            row.appendChild(strike);
            row.appendChild(input);
            row.appendChild(make('span', 'letter', letter));
            row.appendChild(make('span', 'text', choiceText));
            if (answer.struck[n]) { row.classList.add('struck'); }
            box.appendChild(row);
            rows.push(row);
        });
        refreshChoiceStates(rows);
    }

    markActive();
}

function nextQuestion() {
    show((current + 1) % questions.length);
}

function toggleTextSize() {
    document.body.classList.toggle('large');
}

renderNav();
show(0);
</script>
</form>
</body>
</html>
