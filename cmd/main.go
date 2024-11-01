package main

import (
	app "badyet-tracker/app"
	"fmt"
)

func main() {
	fmt.Print("Test")
	app := new(app.App)
	app.Run()
}
