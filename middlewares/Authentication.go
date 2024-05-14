package middlewares

import (
	"errors"
	"fmt"
	"net/http"
	"os"
	"strings"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v5"
	"github.com/hndev2404/interview_beearning/initializers"
	"github.com/hndev2404/interview_beearning/models"
)

func extractBearerToken(header string) (string, error) {
	if header == "" {
		return "", errors.New("bad header value given")
	}

	jwtToken := strings.Split(header, " ")
	if len(jwtToken) != 2 {
		return "", errors.New("incorrectly formatted authorization header")
	}

	return jwtToken[1], nil
}

func parseToken(jwtToken string) (*jwt.Token, error) {
	token, err := jwt.Parse(jwtToken, func(token *jwt.Token) (interface{}, error) {
		if _, OK := token.Method.(*jwt.SigningMethodHMAC); !OK {
			return nil, errors.New("bad signed method received")
		}
		return []byte(os.Getenv("SECRET")), nil
	})

	if err != nil {
		fmt.Println(err)
		return nil, errors.New("bad jwt token")
	}

	return token, nil
}

func Authentication(c *gin.Context) {
	jwtToken, err := extractBearerToken(c.GetHeader("Authorization"))
	if err != nil {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{
			"message": err.Error(),
		})
		return
	}
	// Decode/ valiate token
	token, err := parseToken(jwtToken)
	if err != nil {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{
			"message": err.Error(),
		})
		return
	}

	claims, OK := token.Claims.(jwt.MapClaims)
	if !OK {
		c.AbortWithStatusJSON(http.StatusInternalServerError, gin.H{
			"message": "unable to parse claims",
		})
		return
	}
	userId := claims["sub"]
	if userId == nil {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{
			"message": "no sub property in claims",
		})
		return
	}

	var user models.User
	initializers.DB.First(&user, userId)

	c.Set("user", user)
	c.Next()
}
