package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/controllers"
	"github.com/hndev2404/interview_beearning/middlewares"
)

func UserRoute(router *gin.Engine) {
	router.GET("/profile", middlewares.Authentication, controllers.Profile)
	router.POST("/login", controllers.Login)
	router.POST("/signup", controllers.Signup)
}
