package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"
	"github.com/hndev2404/interview_beearning/dto"
	"github.com/hndev2404/interview_beearning/response"
	"github.com/hndev2404/interview_beearning/services"
)

func Signup(c *gin.Context) {
	// Validation
	var body dto.SignUpDTO
	if err := c.ShouldBindWith(&body, binding.JSON); err != nil {
		response.ResponseError(c, err)
		return
	}

	// Register User
	user, err := services.RegisterUser(body)

	if err != nil {
		response.ResponseError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"user": user})
}

func Login(c *gin.Context) {
	// Validation
	var body dto.LoginDTO
	if err := c.ShouldBindWith(&body, binding.JSON); err != nil {
		response.ResponseError(c, err)
		return
	}

	// Get token & user data
	token, user, err := services.Login(body)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"token": token,
		"user":  user,
	})
}

func Profile(c *gin.Context) {
	// Get current Employee ID
	userId, err := services.GetUserIdFromToken(c)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	userData := services.GetProfileBaseOnUserId(userId)

	c.JSON(http.StatusOK, gin.H{"user": userData})
}
