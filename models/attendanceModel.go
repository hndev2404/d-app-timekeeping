package models

import (
	"gorm.io/gorm"
)

type Attendance struct {
	Model
	UserID       uint
	Date         uint32
	CheckInTime  uint32
	CheckOutTime uint32
}

func (attendance *Attendance) CheckInAttendance(db *gorm.DB, transactionHash string) error {
	if err := db.Create(attendance).Error; err != nil {
		return err
	}

	transaction := &Transaction{
		Action:          ACTION.CHECKIN,
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
		Action:          ACTION.CHECKOUT,
		UserID:          attendance.UserID,
		AttendanceID:    attendance.ID,
		TransactionHash: transactionHash,
	}
	err := transaction.CreateTransaction(db)
	return err
}
