package controllers

import (
	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"
	"github.com/hndev2404/interview_prj/dto"
	"github.com/hndev2404/interview_prj/response"
	"github.com/hndev2404/interview_prj/services"
)

func AttendanceOwner(c *gin.Context) {
	result, err := services.GetOwnerAddress()
	if err != nil {
		response.ResponseError(c, err)
		return
	}
	response.ResponseSucceed(c, gin.H{"owner": result})
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

func AttendanceList(c *gin.Context) {
	userId, err := services.GetUserIdFromToken(c)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	data, err := services.AttendanceList(userId)
	if err != nil {
		response.ResponseError(c, err)
		return
	}
	response.ResponseSucceed(c, data)

}

func AttendanceByRangeDate(c *gin.Context) {
	// Validation
	var body dto.RangeDateDTO
	if err := c.ShouldBindWith(&body, binding.Query); err != nil {
		response.ResponseError(c, err)
		return
	}

	userId, err := services.GetUserIdFromToken(c)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	data, err := services.AttendanceByRangeDate(userId, body.StartDate, body.EndDate)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	response.ResponseSucceed(c, data)
}

func AttendanceDetail(c *gin.Context) {
	// Validation
	var body dto.AttendanceDetailDTO
	if err := c.ShouldBindWith(&body, binding.Query); err != nil {
		response.ResponseError(c, err)
		return
	}

	userId, err := services.GetUserIdFromToken(c)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	attendance, history, err := services.AttendanceDetail(userId, body.IndexAttendance)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	response.ResponseSucceed(c, gin.H{
		"attendance": attendance,
		"history":    history,
	})
}

func AttendanceUpdate(c *gin.Context) {
	// Validation
	var body dto.AttendanceUpdateDTO
	if err := c.ShouldBindWith(&body, binding.JSON); err != nil {
		response.ResponseError(c, err)
		return
	}

	userId, err := services.GetUserIdFromToken(c)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	attendance, err := services.UpdateAttendance(userId, &body)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	response.ResponseSucceed(c, attendance)
}
