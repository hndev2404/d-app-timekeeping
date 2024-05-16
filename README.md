# GO Backend - Smart Contract
A DApp manages employee attendance and details using Golang and Solidity. It leverages blockchain tech for transparency and security. Golang handles the backend, while Solidity creates smart contracts for recording and validating attendance on the blockchain.

## 🛠 Built With

[![Go Badge](https://img.shields.io/badge/Go-00ADD8?logo=go&logoColor=fff&style=for-the-badge)](https://go.dev/)
[![Gin Badge](https://img.shields.io/badge/Gin-008ECF?logo=gin&logoColor=fff&style=for-the-badge)](https://gin-gonic.com/)
[![Geth Badge](https://img.shields.io/badge/Geth-3C3C3D?logo=ethereum&logoColor=fff&style=for-the-badge)](https://geth.ethereum.org/)
[![Solidity Badge](https://img.shields.io/badge/Solidity-363636?logo=solidity&logoColor=fff&style=for-the-badge)](https://soliditylang.org/)

## Run Locally

### Environment
- Go: `go1.22.2 linux/amd64`
- Docker: `25.0.3, build 4debf41`
- Node: `v18.18.0`
- Solc: `0.8.25+commit.b61c2a91.Linux.g++`
- Abigen: `1.14.3-stable`
- [Migrate](https://pkg.go.dev/github.com/golang-migrate/migrate/v4) `4.17.1`

### Clone the project.
```bash
git clone https://github.com/hndev2404/interview_prj
cd interview_prj
```

### Smart Contract compilation & ABI

Install sol
```bash
sudo apt-get install solc
```

Install abigen.
```bash
go install github.com/ethereum/go-ethereum/cmd/abigen
```

### Compile Daemon
Very simple compile daemon for Go
```bash
go install github.com/githubnemo/CompileDaemon
```

### Deploy Smart Contract
1. Generate Go binding for contract.
    ```bash
    make init-contract
    ```

2. Update `.env`
    
    `BC_DIAL_CLIENT` Dial connects a client to the given URL.

    `BC_ACCOUNT_PRIVATE_KEY` The account using for deploy smart contract (Owner)

    ```bash
    BC_DIAL_CLIENT=<dial client>
    BC_ACCOUNT_PRIVATE_KEY=<private key>
    ```

3. Deploy smart contract
    ```bash
    make deploy-contract
    ```

    After the deploy succeed we will get address of contract in folder `./logs` with format name: `./logs/deploy_smart_contract_YYYY-MM-DD_HH:mm:ss.log`

    Copy the contract address from the terminal and paste it in .env.
    ```bash
    BC_CONTRACT_ADDRESS=<contract address>
    ```

    For example:
    ```log
    2024/05/16 22:00:31 Transaction has been committed!!
    2024/05/16 22:00:31 --------------------------------
    2024/05/16 22:00:31 Contract Address: 0xc2Fb27e49491ceeB451403c19b783a78F7E903dD
    2024/05/16 22:00:31 -----------------
    2024/05/16 22:00:31 Transaction Hash: 0xfd8b30e0c96b2606af207dd98b1f6fbc58514285286ca5b589ed0209c7c163a9
    2024/05/16 22:00:31 -----------------
    ```

### Start Application
1. Start Postgres & Adminer for Database
    ```bash
    make up
    ```

2. Init database
    ```bash
    make migrate up
    ```
    Or execute SQL queries directly at `migrations/init.sql` 

3. Run app on local
    ```bash
    make dev
    ```

    The application will run on `PORT` has been defined in `.env`.


