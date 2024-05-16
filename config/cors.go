package config

import "github.com/gin-contrib/cors"

func CORS() cors.Config {
	configCORS := cors.DefaultConfig()
	configCORS.AllowOrigins = []string{"*"}
	return configCORS
}
