package app

import "fmt"

type App struct {
}

func (a *App) Run() {
	fmt.Print("running")
}
