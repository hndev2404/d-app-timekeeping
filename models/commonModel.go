package models

import (
	"time"

	"gorm.io/gorm"
)

type Model struct {
	ID        uint           `json:"id" gorm:"primarykey"`
	CreatedAt time.Time      `json:"-" gorm:"primarykey"`
	UpdatedAt time.Time      `json:"-" gorm:"primarykey"`
	DeletedAt gorm.DeletedAt `json:"-" gorm:"index"`
}
