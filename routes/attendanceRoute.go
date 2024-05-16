package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/controllers"
	"github.com/hndev2404/interview_beearning/middlewares"
)

func AttendanceRoute(router *gin.RouterGroup) {
	attendanceRouter := router.Group("/attendance")

	// Owner
	attendanceRouter.GET("/addressOwner", middlewares.Authentication, controllers.AttendanceOwner)

	attendanceRouter.GET("/list", middlewares.Authentication, controllers.AttendanceList)
	attendanceRouter.GET("/detail/:attendanceId", middlewares.Authentication, controllers.AttendanceDetail)

	attendanceRouter.POST("/checkin", middlewares.Authentication, controllers.AttendanceCheckIn)
	attendanceRouter.POST("/checkout", middlewares.Authentication, controllers.AttendanceCheckout)
}
