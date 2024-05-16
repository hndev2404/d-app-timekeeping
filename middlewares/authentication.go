package middlewares

import (
	"github.com/gin-gonic/gin"
	"github.com/hndev2404/interview_beearning/response"
	"github.com/hndev2404/interview_beearning/services"
)

func Authentication(c *gin.Context) {
	jwtToken, err := services.GetTokenFromBearerToken(c.GetHeader("Authorization"))
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	token, err := services.VerifyToken(jwtToken)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	user, err := services.GetUserFromToken(token)
	if err != nil {
		response.ResponseError(c, err)
		return
	}

	c.Set("user", user)
	c.Next()
}
