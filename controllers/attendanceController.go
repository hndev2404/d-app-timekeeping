package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"
	"github.com/hndev2404/interview_beearning/dto"
	"github.com/hndev2404/interview_beearning/response"
	"github.com/hndev2404/interview_beearning/services"
)

func AttendanceOwner(c *gin.Context) {
	result, err := services.GetOwnerAddress()
	if err != nil {
		response.ResponseError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"owner": result})

}

func AttendanceList(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{"message": "AttendanceList"})
}

func AttendanceDetail(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{"message": "AttendanceDetail"})
}

func AttendanceCheckIn(c *gin.Context) {
	// Validation
	var body dto.CheckInDTO
	if err := c.ShouldBindWith(&body, binding.JSON); err != nil {
		response.ResponseError(c, err)
		return
	}

	// Get current Employee ID
	userId, err := services.GetUserIdFromToken(c)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	data, err := services.AttendanceCheckIn(userId, &body)
	if err != nil {
		response.ResponseError(c, err)
		return
	}
	response.ResponseSucceed(c, data)
}

func AttendanceCheckout(c *gin.Context) {
	// Validation
	var body dto.CheckoutDTO
	if err := c.ShouldBindWith(&body, binding.JSON); err != nil {
		response.ResponseError(c, err)
		return
	}

	userId, err := services.GetUserIdFromToken(c)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	data, err := services.AttendanceCheckOut(userId, &body)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	response.ResponseSucceed(c, data)
}
