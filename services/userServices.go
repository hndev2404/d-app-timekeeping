package services

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/config"
	"github.com/hndev2404/interview_beearning/dto"
	"github.com/hndev2404/interview_beearning/helpers"
	"github.com/hndev2404/interview_beearning/models"
)

func RegisterUser(c *gin.Context, data dto.SignUpDTO) (models.User, error) {
	var user models.User
	hash, err := GeneratePassword([]byte(data.Password))
	if err != nil {
		helpers.ResonseError(c, err)
		return user, err
	}

	user = models.User{Email: data.Email, Password: string(hash), Name: data.Name}
	result := config.DB.Create(&user)

	if result.Error != nil {
		return user, result.Error
	}

	return user, nil
}
