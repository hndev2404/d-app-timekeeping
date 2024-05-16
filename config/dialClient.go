package config

import (
	"context"
	"crypto/ecdsa"
	"fmt"
	"log"
	"math/big"
	"os"

	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/crypto"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/hndev2404/interview_beearning/contract"
	"github.com/hndev2404/interview_beearning/helpers"
)

var ETH_CLIENT *ethclient.Client
var ATTENDANCE_CONTRACT_INSTANCE *contract.Contract

func DialClient() *ethclient.Client {
	rawURL := os.Getenv("BC_DIAL_CLIENT")

	client, err := ethclient.Dial(rawURL)
	if err != nil {
		log.Fatal(err)
	}

	return client
}

func ConnectToETH() {
	ETH_CLIENT = DialClient()

	contractHex := os.Getenv("BC_CONTRACT_ADDRESS")
	printContract := fmt.Sprintf("Contract Address: %s", contractHex)
	log.Println(printContract)

	contractAddress := common.HexToAddress("0xb83C51Fc6951653f60408575E588724ad8555871")
	var err error
	ATTENDANCE_CONTRACT_INSTANCE, err = contract.NewContract(contractAddress, ETH_CLIENT)
	if err != nil {
		log.Fatal(err)
	}

	log.Println("Connect to ETH successfully!!!")
}

func AuthGenerator(client *ethclient.Client) *bind.TransactOpts {
	privateKey, err := crypto.HexToECDSA(os.Getenv("BC_ACCOUNT_PRIVATE_KEY"))
	if err != nil {
		log.Fatal(err)
	}

	publicKey := privateKey.Public()
	publicKeyECDSA, ok := publicKey.(*ecdsa.PublicKey)
	if !ok {
		log.Fatal("Error casting public key to ECDSA")
	}

	fromAddress := crypto.PubkeyToAddress(*publicKeyECDSA)
	nonce, err := client.PendingNonceAt(context.Background(), fromAddress)
	if err != nil {
		log.Fatal(err)
	}

	gasLimit, err := helpers.ConvertStringToUint64(os.Getenv("BC_GAS_LIMIT"))
	if err != nil {
		log.Fatal(err)
	}
	gasPrice, err := client.SuggestGasPrice(context.Background())
	if err != nil {
		log.Fatal(err)
	}

	chainID, err := client.ChainID(context.Background())
	if err != nil {
		log.Fatal(err)
	}

	auth, err := bind.NewKeyedTransactorWithChainID(privateKey, chainID)
	if err != nil {
		log.Fatal(err)
	}

	auth.Nonce = big.NewInt(int64(nonce))
	auth.Value = big.NewInt(0)
	auth.GasLimit = gasLimit
	auth.GasPrice = gasPrice

	return auth
}
