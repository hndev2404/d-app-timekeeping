package routes

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func PingRoute(router *gin.RouterGroup) {

	router.GET("/ping", func(c *gin.Context) {
		c.String(http.StatusOK, "OK")
	})
}
