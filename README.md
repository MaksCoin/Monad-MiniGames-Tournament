<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Monad MiniGames Tournament</title>
  <style>
    body {
      background: #0a0a0a;
      color: #f0f0f0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      line-height: 1.6;
      padding: 20px;
      max-width: 900px;
      margin: auto;
    }
    h1, h2, h3 {
      color: #ff00ff;
      text-shadow: 0 0 5px #ff00ff, 0 0 10px #ff33ff;
    }
    a {
      color: #00ffff;
      text-decoration: none;
      font-weight: bold;
      text-shadow: 0 0 5px #00ffff, 0 0 10px #33ffff;
    }
    a:hover {
      color: #ff00ff;
      text-shadow: 0 0 10px #ff00ff, 0 0 20px #ff66ff;
    }
    code, pre {
      background: #111;
      border: 1px solid #333;
      padding: 5px 10px;
      border-radius: 6px;
      color: #0ff;
      font-family: "Courier New", monospace;
      text-shadow: 0 0 5px #0ff;
    }
    pre {
      display: block;
      overflow-x: auto;
      margin: 10px 0;
      padding: 15px;
    }
    li {
      margin-bottom: 8px;
    }
    hr {
      border: none;
      border-top: 2px solid #ff00ff;
      margin: 30px 0;
      box-shadow: 0 0 10px #ff00ff;
    }
    .badges img {
      margin: 5px 10px 15px 0;
      border-radius: 8px;
      box-shadow: 0 0 8px #0ff, 0 0 15px #0ff;
    }
    .author {
      font-size: 1.2em;
      color: #ff66ff;
      text-align: center;
      margin-top: 40px;
      text-shadow: 0 0 5px #ff66ff, 0 0 15px #ff99ff;
    }
    .socials {
      margin-top: 25px;
      text-align: center;
    }
    .socials a {
      margin: 0 10px;
      font-size: 1.1em;
      display: inline-block;
    }
  </style>
</head>
<body>

<h1>🎮 Monad MiniGames Tournament</h1>

<div class="badges">
  <a href="https://gmonad.store/">
    <img src="https://img.shields.io/badge/Website-gmonad.store-purple?style=for-the-badge&logo=firefox" alt="Website">
  </a>
  <a href="https://soliditylang.org/">
    <img src="https://img.shields.io/badge/Solidity-smart%20contracts-black?style=for-the-badge&logo=solidity" alt="Solidity">
  </a>
  <a href="https://hardhat.org/">
    <img src="https://img.shields.io/badge/Hardhat-Dev-yellow?style=for-the-badge" alt="Hardhat">
  </a>
  <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript">
    <img src="https://img.shields.io/badge/JavaScript-Games-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript">
  </a>
</div>

<p>🔥 Meme-neon styled mini-games website on the Monad blockchain.<br>
Play arcade games, climb the leaderboard, and win MON prizes!</p>

<p>🌐 Official Website: <a href="https://gmonad.store/">gmonad.store</a></p>

<hr>

<h2>👤 Hosted by <a href="https://github.com/MaksCoin">@MaksCoin</a></h2>
<p><strong>Nickname everywhere:</strong> ⫷๓คкร⫸</p>

<hr>

<h2>🚀 How It Works</h2>
<ol>
  <li><strong>Entry:</strong> Connect your Web3 wallet (compatible with Monad). Pay <strong>1 MON</strong> to join the weekly tournament — it goes into the prize pool.</li>
  <li><strong>Games:</strong> Play integrated HTML/JS mini-games. The system automatically tracks your <strong>best score</strong> for each game.</li>
  <li><strong>Leaderboard:</strong> The main page shows the leaderboard — <strong>Total Score = sum of your best scores</strong>.</li>
  <li><strong>Final:</strong> Every Sunday at <strong>23:59</strong>, the tournament ends. Winners are determined automatically from on-chain data.</li>
  <li><strong>Rewards:</strong> The prize pool is distributed among the <strong>Top-3 players</strong>: 🥇 50%, 🥈 30%, 🥉 20%.</li>
  <li><strong>New Cycle:</strong> Every Monday, the leaderboard resets and a new round begins.</li>
</ol>

<hr>

<h2>🕹️ Tech Stack</h2>
<ul>
  <li><strong>Frontend:</strong> HTML, CSS (meme-neon theme), JavaScript</li>
  <li><strong>Web3:</strong> ethers.js for blockchain integration</li>
  <li><strong>Smart Contract:</strong> Solidity + OpenZeppelin (deployment via Hardhat)</li>
</ul>

<hr>

<h2>📂 Project Structure</h2>
<pre>
monad-minigames-tournament/
├── contracts/         # Solidity smart contract
├── dapp/              # Frontend (HTML/CSS/JS)
│   ├── games/         # Mini-games
│   ├── index.html     # Main page with leaderboard
│   ├── styles.css     # Meme-neon styling
│   └── app.js         # Web3 logic: wallet, scoring, leaderboard
└── README.md          # This documentation
</pre>

<hr>

<h2>⚡ Setup & Run</h2>
<pre>
git clone https://github.com/MaksCoin/Monad-MiniGames-Tournament-.git
cd Monad-MiniGames-Tournament-
</pre>

<h3>Smart Contracts</h3>
<pre>
cd contracts
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network &lt;your-monad-network&gt;
</pre>

<p>After deployment, copy the contract address and paste it into <code>dapp/config.js</code>.</p>

<h3>Frontend</h3>
<p>Open <code>dapp/index.html</code> directly in a browser or start a local server:</p>
<pre>
cd dapp
npx http-server .
</pre>

<hr>

<h2>🎮 Adding a New Game</h2>
<ol>
  <li>Place your game files inside <code>dapp/games/your-game/</code>.</li>
  <li>Add an iframe link in <code>index.html</code>.</li>
  <li>Your game should call:
    <pre>
window.submitScoreFromGame(gameId, score);
    </pre>
  </li>
</ol>

<hr>

<h2>🌐 Socials</h2>
<div class="socials">
  <p><strong>Discord:</strong> maksnft</p>
  <p><strong>X (Twitter):</strong> <a href="https://x.com/MLevockin">@MLevockin</a></p>
  <p><strong>Telegram:</strong> <a href="https://t.me/makscoin">t.me/makscoin</a></p>
</div>

<p class="author">
  👾 <a href="https://github.com/MaksCoin">@MaksCoin</a><br>
  Nickname: ⫷๓คкร⫸<br>
  Meme, Neon & Blockchain vibes 💜
</p>

</body>
</html>
