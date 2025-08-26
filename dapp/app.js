let provider;
let signer;
let contract;

const contractAddress = "YOUR_CONTRACT_ADDRESS";
const abi = [/* ABI скомпилированного контракта */];

document.getElementById("connectWallet").onclick = async () => {
    if(window.ethereum){
        provider = new ethers.providers.Web3Provider(window.ethereum);
        await provider.send("eth_requestAccounts", []);
        signer = provider.getSigner();
        contract = new ethers.Contract(contractAddress, abi, signer);
        alert("Wallet connected!");
        updateLeaderboard();
    } else {
        alert("Install MetaMask!");
    }
};

async function updateLeaderboard(){
    const [players, scores] = await contract.getLeaderboard();
    const tbody = document.getElementById("leaderboardBody");
    tbody.innerHTML = "";
    for(let i=0; i<players.length; i++){
        const row = `<tr><td>${players[i]}</td><td>${scores[i]}</td></tr>`;
        tbody.innerHTML += row;
    }
}

window.submitScoreFromGame = async (gameId, score) => {
    await contract.submitScore(gameId, score);
    updateLeaderboard();
};
