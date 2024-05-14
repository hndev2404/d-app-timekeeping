package services

import (
	"errors"
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/golang-jwt/jwt/v5"
	"github.com/hndev2404/interview_beearning/config"
	"github.com/hndev2404/interview_beearning/models"
	"golang.org/x/crypto/bcrypt"
)

var hash_cost = 10

func GetTokenFromBearerToken(bearerToken string) (string, error) {
	if bearerToken == "" {
		return "", errors.New("bad header value given")
	}

	// Template: `Bearer Token`
	jwtToken := strings.Split(bearerToken, " ")
	if len(jwtToken) != 2 {
		return "", errors.New("incorrectly formatted authorization header")
	}

	return jwtToken[1], nil
}

func VerifyToken(jwtToken string) (*jwt.Token, error) {
	token, err := jwt.Parse(jwtToken, func(token *jwt.Token) (interface{}, error) {
		if _, OK := token.Method.(*jwt.SigningMethodHMAC); !OK {
			return nil, errors.New("bad signed method received")
		}
		return []byte(os.Getenv("JWT_SECRET")), nil
	})

	fmt.Println(os.Getenv("JWT_SECRET"), err)
	if err != nil {
		return nil, errors.New("bad jwt token")
	}

	return token, nil
}

func GetUserFromToken(token *jwt.Token) (models.User, error) {
	var user models.User
	claims, OK := token.Claims.(jwt.MapClaims)
	if !OK {
		return user, errors.New("unable to parse claims")
	}
	userId := claims["sub"]
	if userId == user {
		return user, errors.New("no sub property in claims")
	}

	config.DB.First(&user, userId)

	return user, nil
}

func GeneratePassword(password []byte) ([]byte, error) {
	hash, err := bcrypt.GenerateFromPassword(password, hash_cost)

	if err != nil {
		return nil, errors.New("failed to hash password")
	}
	return hash, nil
}

func ValidatePassword(hashedPassword, password []byte) error {
	err := bcrypt.CompareHashAndPassword(hashedPassword, password)
	return err
}

func GenerateToken(user *models.User) (tokenString string, err error) {
	var jwtExpireInHour int64
	jwtExpireInHour, err = strconv.ParseInt(os.Getenv("JWT_EXPIRE_IN_HOUR"), 10, 32)
	if err != nil {
		return tokenString, err
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, jwt.MapClaims{
		"sub": user.ID,
		"exp": time.Now().Add(time.Hour * time.Duration(jwtExpireInHour)).Unix(),
	})

	tokenString, err = token.SignedString([]byte(os.Getenv("JWT_SECRET")))
	return tokenString, err
}
