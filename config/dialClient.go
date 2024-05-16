package config

import (
	"fmt"
	"log"
	"os"

	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/hndev2404/interview_beearning/contract"
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
	printContract := fmt.Sprintf("Contract: %s", contractHex)
	fmt.Println(printContract)

	contractAddress := common.HexToAddress("0xb83C51Fc6951653f60408575E588724ad8555871")
	var err error
	ATTENDANCE_CONTRACT_INSTANCE, err = contract.NewContract(contractAddress, ETH_CLIENT)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(ATTENDANCE_CONTRACT_INSTANCE)
}
