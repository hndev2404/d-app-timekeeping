package models

import "gorm.io/gorm"

type Reason struct {
	CHECKIN  string
	CHECKOUT string
}

// ACTION is the instance of ActionStruct with the enum values for default CHECKIN/CHECKOUT Action
var REASON = Reason{
	CHECKIN:  "CHECKIN",
	CHECKOUT: "CHECKOUT",
}

type Transaction struct {
	Model
	Reason          string `json:"reason"`
	UserID          uint   `json:"user_id"`
	AttendanceID    uint   `json:"attendance_id"`
	TransactionHash string `json:"transaction_hash"`
}

func (transaction *Transaction) CreateTransaction(db *gorm.DB) error {
	if err := db.Create(transaction).Error; err != nil {
		return err
	}

	return nil
}
