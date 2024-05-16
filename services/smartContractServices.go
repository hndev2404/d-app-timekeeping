package services

import (
	"math"
	"math/big"
)

func ConvertWeiToETH(wei string) (eth *big.Float) {
	bigFloatBalance := new(big.Float)
	bigFloatBalance.SetString(wei)

	//  1eth = 10^18wei
	eth = new(big.Float).Quo(bigFloatBalance, big.NewFloat(math.Pow10(18)))
	return
}
