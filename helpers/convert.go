package helpers

import (
	"fmt"
	"strconv"
)

func ConvertStringToUint64(val string) (uint64, error) {
	uintValue, err := strconv.ParseUint(val, 10, 64)
	if err != nil {
		return 0, fmt.Errorf("error converting %s to uint64: %v", val, err)
	}

	return uintValue, nil
}
