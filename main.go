package main

import (
	"io"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/config"
	"github.com/hndev2404/interview_beearning/routes"
)

func init() {
	config.LoadEnvVariables()
	config.ConnectToDb()
	config.SyncDatabase()
	config.RegisterValidator()
}
func main() {

	f, _ := os.Create(config.PATH_TO_LOG)
	gin.DefaultWriter = io.MultiWriter(f)
	router := gin.Default()

	routes.Init(router)

	router.Run()
}
