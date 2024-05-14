package main

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/initializers"
	"github.com/hndev2404/interview_beearning/routes"
)

func init() {
	initializers.LoadEnvVariables()
	initializers.ConnectToDb()
	initializers.SyncDatabase()
}
func main() {
	router := gin.New()

	router.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "OK",
		})
	})

	routes.UserRoute(router)

	router.Run()
}
