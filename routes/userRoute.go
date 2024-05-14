package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/controllers"
	"github.com/hndev2404/interview_beearning/middlewares"
)

func UserRoute(router *gin.RouterGroup) {
	userRouter := router.Group("/user")

	userRouter.GET("/profile", middlewares.Authentication, controllers.Profile)
	userRouter.POST("/login", controllers.Login)
	userRouter.POST("/signup", controllers.Signup)
}
