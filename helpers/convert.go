package helpers

import (
	"fmt"
	"math/big"
	"strconv"
)

func ConvertStringToUint64(val string) (uint64, error) {
	uintValue, err := strconv.ParseUint(val, 10, 64)
	if err != nil {
		return 0, fmt.Errorf("error converting %s to uint64: %v", val, err)
	}

	return uintValue, nil
}

func ConvertUintToBigInt(value uint) *big.Int {
	bigInt := new(big.Int)
	bigInt.SetUint64(uint64(value))
	return bigInt
}
