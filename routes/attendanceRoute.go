package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/controllers"
)

func AttendanceRoute(router *gin.RouterGroup) {
	attendanceRouter := router.Group("/attendance")

	attendanceRouter.GET("/list", controllers.AttendanceList)
	attendanceRouter.GET("/detail/:attendanceId", controllers.AttendanceDetail)

	attendanceRouter.POST("/checkin", controllers.AttendanceCheckin)
	attendanceRouter.POST("/checkout", controllers.AttendanceCheckout)
}
