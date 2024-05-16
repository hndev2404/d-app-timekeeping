package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_prj/controllers"
	"github.com/hndev2404/interview_prj/middlewares"
)

func UserRoute(router *gin.RouterGroup) {
	userRouter := router.Group("/user")

	userRouter.GET("/profile", middlewares.Authentication, controllers.Profile)
	userRouter.POST("/login", controllers.Login)
	userRouter.POST("/signup", controllers.Signup)
}
