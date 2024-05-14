package config

import (
	"regexp"

	"github.com/gin-gonic/gin/binding"
	"github.com/go-playground/validator/v10"
)

var validatePassword validator.Func = func(fl validator.FieldLevel) bool {
	password := fl.Field().String()

	// Password regular expression pattern
	// This is a simplified pattern:
	// - At least 6 characters
	// - The characters can be any uppercase letter, lowercase letter, or digit.
	pattern := `^[a-zA-Z0-9]{6,}$`
	match, _ := regexp.MatchString(pattern, password)
	return match
}

func RegisterValidator() {
	// Register custom validator for password field
	if v, ok := binding.Validator.Engine().(*validator.Validate); ok {
		v.RegisterValidation("password", validatePassword)
	}
}
