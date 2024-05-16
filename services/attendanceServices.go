package services

import (
	"math"
	"math/big"

	"github.com/ethereum/go-ethereum/common"
	"github.com/hndev2404/interview_beearning/config"
	"github.com/hndev2404/interview_beearning/contract"
	"github.com/hndev2404/interview_beearning/dto"
	"github.com/hndev2404/interview_beearning/helpers"
	"github.com/hndev2404/interview_beearning/models"
)

func GetOwnerAddress() (common.Address, error) {
	result, err := config.ATTENDANCE_CONTRACT_INSTANCE.GetOwner(nil)
	return result, err
}

func AttendanceCheckIn(userId uint, data *dto.CheckInDTO) (*models.Attendance, error) {
	employeeID := helpers.ConvertUintToBigInt(userId)

	var relevantDetails contract.RelevantDetails
	relevantDetails.AddressInfo.Label = data.RelevantDetails.AddressInfo.Label
	relevantDetails.AddressInfo.Details = data.RelevantDetails.AddressInfo.Details
	relevantDetails.AddressInfo.Long = data.RelevantDetails.AddressInfo.Long
	relevantDetails.AddressInfo.Lat = data.RelevantDetails.AddressInfo.Lat

	relevantDetails.Imgs = data.RelevantDetails.Imgs
	relevantDetails.Note = data.RelevantDetails.Note

	auth := config.AuthGenerator(config.ETH_CLIENT)
	result, err := config.ATTENDANCE_CONTRACT_INSTANCE.CheckIn(
		auth,
		employeeID,
		data.Date,
		data.CheckInTime,
		relevantDetails,
	)
	if err != nil {
		return nil, err
	}

	// TODO:
	// - Validation transaction already created

	// Storage Attendance to DB
	attendance := &models.Attendance{
		UserID:          userId,
		Date:            data.Date,
		CheckInTime:     data.CheckInTime,
		CheckOutTime:    0,
		TransactionHash: result.Hash().String(),
	}

	err = attendance.CreateAttendance(config.DB)
	return attendance, err
}

func AttendanceCheckOut(userId uint, data *dto.CheckInDTO) (*models.Attendance, error) {
	employeeID := helpers.ConvertUintToBigInt(userId)

	var relevantDetails contract.RelevantDetails
	relevantDetails.AddressInfo.Label = data.RelevantDetails.AddressInfo.Label
	relevantDetails.AddressInfo.Details = data.RelevantDetails.AddressInfo.Details
	relevantDetails.AddressInfo.Long = data.RelevantDetails.AddressInfo.Long
	relevantDetails.AddressInfo.Lat = data.RelevantDetails.AddressInfo.Lat

	relevantDetails.Imgs = data.RelevantDetails.Imgs
	relevantDetails.Note = data.RelevantDetails.Note

	auth := config.AuthGenerator(config.ETH_CLIENT)
	result, err := config.ATTENDANCE_CONTRACT_INSTANCE.CheckIn(
		auth,
		employeeID,
		data.Date,
		data.CheckInTime,
		relevantDetails,
	)
	if err != nil {
		return nil, err
	}

	// TODO:
	// - Validation transaction already created

	// Storage Attendance to DB
	attendance := &models.Attendance{
		UserID:          userId,
		Date:            data.Date,
		CheckInTime:     data.CheckInTime,
		CheckOutTime:    0,
		TransactionHash: result.Hash().String(),
	}

	err = attendance.CreateAttendance(config.DB)
	return attendance, err
}

func ConvertWeiToETH(wei string) (eth *big.Float) {
	bigFloatBalance := new(big.Float)
	bigFloatBalance.SetString(wei)

	//  1eth = 10^18wei
	eth = new(big.Float).Quo(bigFloatBalance, big.NewFloat(math.Pow10(18)))
	return
}
