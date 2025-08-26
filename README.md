<h1>🎮 Monad MiniGames Tournament</h1>

<p>
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
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
  </a>
</p>

<p>🔥 Meme-neon styled mini-games website on the Monad blockchain.<br>
Play arcade games, climb the leaderboard, and win MON prizes!</p>

<p>🌐 Official Website: <a href="https://gmonad.store/">gmonad.store</a></p>

<hr>

<h2>👤 Hosted by <a href="https://github.com/MaksCoin">@MaksCoin</a></h2>

<hr>

<h2>🚀 How It Works</h2>
<ol>
  <li><strong>Entry</strong><br>Connect your Web3 wallet (compatible with Monad). Pay <strong>1 MON</strong> to join the weekly tournament — it goes into the prize pool.</li>
  <li><strong>Games</strong><br>Play integrated HTML/JS mini-games. The system automatically tracks your <strong>best score</strong> for each game.</li>
  <li><strong>Leaderboard</strong><br>The main page shows the leaderboard: <strong>Total Score = sum of your best scores across all games</strong>.</li>
  <li><strong>Final</strong><br>Every Sunday at <strong>23:59</strong>, the tournament ends. Winners are determined automatically from on-chain data.</li>
  <li><strong>Rewards</strong><br>The prize pool is distributed among the <strong>Top-3 players</strong>: 🥇 50%, 🥈 30%, 🥉 20%.</li>
  <li><strong>New Cycle</strong><br>Every Monday, the leaderboard resets and a new round begins.</li>
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

<h2>👾 Author</h2>
<p><a href="https://github.com/MaksCoin">@MaksCoin</a> — Meme, Neon & Blockchain vibes 💜</p>
