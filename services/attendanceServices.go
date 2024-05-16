package services

import (
	"github.com/ethereum/go-ethereum/common"
	"github.com/hndev2404/interview_prj/config"
	"github.com/hndev2404/interview_prj/contract"
	"github.com/hndev2404/interview_prj/dto"
	"github.com/hndev2404/interview_prj/helpers"
	"github.com/hndev2404/interview_prj/models"
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
	result, err := config.ATTENDANCE_CONTRACT_INSTANCE.Checkin(
		auth,
		employeeID,
		data.Date,
		data.CheckInTime,
		relevantDetails,
	)
	if err != nil {
		return nil, err
	}

	// Storage Attendance to DB
	attendance := &models.Attendance{
		UserID:       userId,
		Date:         data.Date,
		CheckInTime:  data.CheckInTime,
		CheckOutTime: 0,
	}

	transactionHash := result.Hash().String()

	err = attendance.CheckInAttendance(config.DB, transactionHash)
	return attendance, err
}

func AttendanceCheckOut(userId uint, data *dto.CheckoutDTO) (*models.Attendance, error) {
	employeeID := helpers.ConvertUintToBigInt(userId)

	auth := config.AuthGenerator(config.ETH_CLIENT)
	result, err := config.ATTENDANCE_CONTRACT_INSTANCE.Checkout(
		auth,
		employeeID,
		data.Date,
		data.CheckoutTime,
	)
	if err != nil {
		return nil, err
	}

	// TODO:
	// - Validation transaction already created

	// Storage Attendance to DB
	attendance := &models.Attendance{
		UserID:       userId,
		Date:         data.Date,
		CheckOutTime: data.CheckoutTime,
	}
	transactionHash := result.Hash().String()

	err = attendance.CheckoutAttendance(config.DB, data.CheckoutTime, transactionHash)
	return attendance, err
}

func AttendanceList(userId uint) ([]contract.AttendanceData, error) {
	employeeID := helpers.ConvertUintToBigInt(userId)

	result, err := config.ATTENDANCE_CONTRACT_INSTANCE.GetAllAttendanceByEmployeeID(nil, employeeID)
	return result, err
}

func AttendanceByRangeDate(userId uint, startDate uint32, endDate uint32) ([]contract.AttendanceData, error) {
	employeeID := helpers.ConvertUintToBigInt(userId)

	_, result, err := config.ATTENDANCE_CONTRACT_INSTANCE.GetAttendanceByRangeDate(nil, employeeID, startDate, endDate)

	return result, err
}

func AttendanceDetail(userId uint, indexAttendance uint) (contract.AttendanceData, []contract.History, error) {
	employeeID := helpers.ConvertUintToBigInt(userId)
	index := helpers.ConvertUintToBigInt(indexAttendance)

	attendance, history, err := config.ATTENDANCE_CONTRACT_INSTANCE.GetAttendanceDetail(nil, employeeID, index)
	return attendance, history, err
}

func UpdateAttendance(userId uint, data *dto.AttendanceUpdateDTO) (*models.Attendance, error) {
	employeeID := helpers.ConvertUintToBigInt(userId)

	auth := config.AuthGenerator(config.ETH_CLIENT)
	result, err := config.ATTENDANCE_CONTRACT_INSTANCE.UpdateAttendanceRecord(
		auth,
		employeeID,
		data.Date,
		data.CheckInTime,
		data.CheckoutTime,
		data.Reason,
	)

	if err != nil {
		return nil, err
	}
	// Storage Attendance to DB
	attendance := &models.Attendance{
		UserID:       userId,
		Date:         data.Date,
		CheckInTime:  data.CheckInTime,
		CheckOutTime: data.CheckoutTime,
	}
	transactionHash := result.Hash().String()

	err = attendance.UpdateAttendance(config.DB, *attendance, transactionHash, data.Reason)
	return attendance, err
}
