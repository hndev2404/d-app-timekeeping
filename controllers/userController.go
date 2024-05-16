package controllers

import (
	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"
	"github.com/hndev2404/interview_prj/dto"
	"github.com/hndev2404/interview_prj/response"
	"github.com/hndev2404/interview_prj/services"
)

func Signup(c *gin.Context) {
	// Validation
	var body dto.SignUpDTO
	if err := c.ShouldBindWith(&body, binding.JSON); err != nil {
		response.ResponseError(c, err)
		return
	}

	// Register User
	token, user, err := services.RegisterUser(body)

	if err != nil {
		response.ResponseError(c, err)
		return
	}
	response.ResponseSucceed(c, gin.H{
		"token": token,
		"user":  user,
	})
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

	response.ResponseSucceed(c, gin.H{
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
	response.ResponseSucceed(c, gin.H{"user": userData})
}
