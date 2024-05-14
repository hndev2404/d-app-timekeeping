package controllers

import (
	"errors"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"
	"github.com/hndev2404/interview_beearning/dto"
	"github.com/hndev2404/interview_beearning/helpers"
	"github.com/hndev2404/interview_beearning/models"
	"github.com/hndev2404/interview_beearning/services"
)

func Signup(c *gin.Context) {
	// Validation
	var body dto.SignUpDTO
	if err := c.ShouldBindWith(&body, binding.JSON); err != nil {
		helpers.ResonseError(c, err)
		return
	}

	// Register User
	user, err := services.RegisterUser(body)

	if err != nil {
		helpers.ResonseError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"user": user})
}

func Login(c *gin.Context) {
	// Validation
	var body dto.LoginDTO
	if err := c.ShouldBindWith(&body, binding.JSON); err != nil {
		helpers.ResonseError(c, err)
		return
	}

	// Get token & user data
	token, user, err := services.Login(body)
	if err != nil {
		helpers.ResonseError(c, err)
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"token": token,
		"user":  user,
	})
}

func Profile(c *gin.Context) {
	user, exists := c.Get("user")

	if !exists {
		helpers.ResonseError(c, errors.New("must authentication before authorization"))
		return
	}

	// Get profile based on token
	userId := user.(models.User).ID

	userData := services.GetProfileBaseOnUserId(userId)

	c.JSON(http.StatusOK, gin.H{"user": userData})
}
