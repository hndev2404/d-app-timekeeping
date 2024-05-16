package models

import (
	"gorm.io/gorm"
)

type Attendance struct {
	Model
	UserID       uint   `json:"user_id"`
	Date         uint32 `json:"date"`
	CheckInTime  uint32 `json:"checkin_time"`
	CheckOutTime uint32 `json:"checkout_time"`
}

func (attendance *Attendance) CheckInAttendance(db *gorm.DB, transactionHash string) error {
	if err := db.Create(attendance).Error; err != nil {
		return err
	}

	transaction := &Transaction{
		Reason:          REASON.CHECKIN,
		UserID:          attendance.UserID,
		AttendanceID:    attendance.ID,
		TransactionHash: transactionHash,
	}
	err := transaction.CreateTransaction(db)

	return err
}

func (attendance *Attendance) CheckoutAttendance(db *gorm.DB, checkoutTime uint32, transactionHash string) error {

	result := db.Where("date = ? AND user_id = ?", attendance.Date, attendance.UserID).First(&attendance)
	if result.Error != nil {
		return result.Error
	}

	attendance.CheckOutTime = checkoutTime

	result = db.Save(&attendance)
	if result.Error != nil {
		return result.Error
	}
	transaction := &Transaction{
		Reason:          REASON.CHECKOUT,
		UserID:          attendance.UserID,
		AttendanceID:    attendance.ID,
		TransactionHash: transactionHash,
	}
	err := transaction.CreateTransaction(db)
	return err
}

func (attendance *Attendance) UpdateAttendance(db *gorm.DB, newAttendance Attendance, transactionHash string, reason string) error {

	result := db.Where("date = ? AND user_id = ?", attendance.Date, attendance.UserID).First(&attendance)
	if result.Error != nil {
		return result.Error
	}

	attendance.CheckInTime = newAttendance.CheckInTime
	attendance.CheckOutTime = newAttendance.CheckOutTime

	result = db.Save(&attendance)
	if result.Error != nil {
		return result.Error
	}
	transaction := &Transaction{
		Reason:          reason,
		UserID:          attendance.UserID,
		AttendanceID:    attendance.ID,
		TransactionHash: transactionHash,
	}
	err := transaction.CreateTransaction(db)
	return err
}
