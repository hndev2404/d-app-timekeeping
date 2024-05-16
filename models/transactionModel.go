package models

import "gorm.io/gorm"

// ActionStruct holds the enum values
type Action struct {
	CHECKIN  string
	CHECKOUT string
	UPDATE   string
}

// ACTION is the instance of ActionStruct with the enum values
var ACTION = Action{
	CHECKIN:  "CHECKIN",
	CHECKOUT: "CHECKOUT",
	UPDATE:   "UPDATE",
}

type Transaction struct {
	Model
	Action          string
	UserID          uint
	AttendanceID    uint
	TransactionHash string
}

func (transaction *Transaction) CreateTransaction(db *gorm.DB) error {
	if err := db.Create(transaction).Error; err != nil {
		return err
	}

	return nil
}
