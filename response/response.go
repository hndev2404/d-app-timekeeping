package helpers

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

const SUCCEED = "SUCCEED"
const ERROR = "ERROR"

func ResponseError(c *gin.Context, err error, data any) {
	c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{
		"result":  ERROR,
		"message": err.Error(),
		"data":    data,
	})
}

func ResponseSucceed(c *gin.Context, data any) {
	c.JSON(http.StatusOK, gin.H{
		"result": SUCCEED,
		"data":   data,
	})

}
