package models

import (
	"gorm.io/gorm"
)

type Attendance struct {
	Model
	UserID          uint
	Date            uint32
	CheckInTime     uint32
	CheckOutTime    uint32
	TransactionHash string
}

func (attendance *Attendance) CreateAttendance(db *gorm.DB) error {
	if err := db.Create(attendance).Error; err != nil {
		return err
	}

	return nil
}
