package routes

import "github.com/gin-gonic/gin"

func Init(router *gin.Engine) {
	v1 := router.Group("/v1")
	PingRoute(v1)
	UserRoute(v1)
}
