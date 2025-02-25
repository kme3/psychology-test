function startTest() {
    document.querySelector(".container").style.display = "none";
    document.getElementById("test").style.display = "block";
}

function calculateResult() {
    let score = 0;
    const answers = document.querySelectorAll("input[type='radio']:checked");

    answers.forEach(answer => {
        score += parseInt(answer.value);
    });

    let resultText = "";
    if (score >= 5) {
        resultText = "Технологии сильно влияют на вас. Попробуйте ограничить экранное время.";
    } else if (score >= 3) {
        resultText = "Вы подвержены влиянию технологий, но держите баланс.";
    } else {
        resultText = "Вы контролируете использование технологий и не испытываете значительного воздействия.";
    }

    document.getElementById("…
