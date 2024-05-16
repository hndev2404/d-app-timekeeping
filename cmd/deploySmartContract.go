package main

import (
	"log"
	"os"
	"time"

	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/hndev2404/interview_beearning/config"
	"github.com/hndev2404/interview_beearning/contract"
)

func main() {
	config.LoadEnvVariables()
	currentDateTime := time.Now().Format("2006-01-01_15:04:05")
	f, err := os.OpenFile("./logs/deploy_smart_contract"+currentDateTime+".log", os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)
	if err != nil {
		log.Fatalf("error opening file: %v", err)
	}
	defer f.Close()

	log.SetOutput(f)
	client := config.DialClient()
	contractAddress, trx, err := deployContract(client)
	if err != nil {
		log.Fatal(err)
	}

	log.Println("Transaction has been committed!!")
	log.Println("--------------------------------")
	log.Printf("Contract Address: " + contractAddress.String())
	log.Println("-----------------")
	log.Printf("Transaction Hash: " + trx.Hash().String())
	log.Println("-----------------")
}

func deployContract(client *ethclient.Client) (common.Address, *types.Transaction, error) {
	auth := config.AuthGenerator(client)
	contract, transaction, _, err := contract.DeployContract(auth, client)
	return contract, transaction, err
}
