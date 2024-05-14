package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func AttendanceList(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{"message": "AttendanceList"})
}

func AttendanceDetail(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{"message": "AttendanceDetail"})
}

func AttendanceCheckin(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{"message": "AttendanceCheckin"})
}

func AttendanceCheckout(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{"message": "AttendanceCheckout"})
}
