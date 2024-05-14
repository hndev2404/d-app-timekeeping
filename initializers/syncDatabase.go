package initializers

import "github.com/hndev2404/interview_beearning/models"

func SyncDatabase() {
	DB.AutoMigrate(&models.User{})
}
