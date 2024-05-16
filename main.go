package main

import (
	"io"
	"os"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_prj/config"
	"github.com/hndev2404/interview_prj/routes"
)

func init() {
	config.LoadEnvVariables()
	config.ConnectToDb()
	config.RegisterValidator()
	config.ConnectToETH()
}
func main() {

	f, _ := os.Create(config.PATH_TO_LOG)
	gin.DefaultWriter = io.MultiWriter(f)
	router := gin.Default()


	router.Use(cors.New(config.CORS()))
	router.Use(gin.Logger())
	router.Use(gin.Recovery())

	routes.Init(router)

	router.Run()
}
