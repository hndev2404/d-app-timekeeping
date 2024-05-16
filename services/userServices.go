package services

import (
	"errors"

	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/config"
	"github.com/hndev2404/interview_beearning/dto"
	"github.com/hndev2404/interview_beearning/models"
)

func RegisterUser(data dto.SignUpDTO) (models.User, error) {
	var user models.User
	hash, err := GeneratePassword([]byte(data.Password))
	if err != nil {
		return user, err
	}

	user = models.User{Email: data.Email, Password: string(hash), Name: data.Name}
	result := config.DB.Create(&user)

	if result.Error != nil {
		return user, result.Error
	}

	return user, nil
}

func GetProfileBaseOnUserId(userId uint) (profile models.User) {
	config.DB.First(&profile, userId)
	return
}

func Login(data dto.LoginDTO) (token string, user models.User, err error) {
	// Find the user
	config.DB.First(&user, "email = ?", data.Email)

	if user.ID == 0 {
		err = errors.New("user not found")
		return
	}

	err = ValidatePassword([]byte(user.Password), []byte(data.Password))

	if err != nil {
		err = errors.New("invalid email or password")
		return
	}

	token, err = GenerateToken(&user)
	return
}

func GetUserIdFromToken(c *gin.Context) (userId uint, err error) {
	user, exists := c.Get("user")
	if !exists {
		err = errors.New("must authentication before authorization")
		return
	}

	userId = user.(models.User).ID
	return
}
