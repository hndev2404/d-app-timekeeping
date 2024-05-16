package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_prj/controllers"
	"github.com/hndev2404/interview_prj/middlewares"
)

func AttendanceRoute(router *gin.RouterGroup) {
	attendanceRouter := router.Group("/attendance")

	// Owner
	attendanceRouter.GET("/addressOwner", middlewares.Authentication, controllers.AttendanceOwner)

	attendanceRouter.GET("/list", middlewares.Authentication, controllers.AttendanceList)
	attendanceRouter.GET("/rangeDate", middlewares.Authentication, controllers.AttendanceByRangeDate)

	attendanceRouter.GET("/detail", middlewares.Authentication, controllers.AttendanceDetail)

	attendanceRouter.POST("/checkin", middlewares.Authentication, controllers.AttendanceCheckIn)
	attendanceRouter.POST("/checkout", middlewares.Authentication, controllers.AttendanceCheckout)

	attendanceRouter.POST("/update", middlewares.Authentication, controllers.AttendanceUpdate)

}
