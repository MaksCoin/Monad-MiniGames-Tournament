document.getElementById("play").onclick = () => {
    const score = Math.floor(Math.random() * 100);
    alert("Your score: " + score);
    window.parent.submitScoreFromGame("sample-game", score);
};
