package main

import(
	"os"
	"github.com/go-vgo/robotgo"
)

func main(){
	var argc int = len(os.Args)
	for i:=1;i<argc;i++{
		robotgo.TypeStr(os.Args[i])
		if i < argc-1{
			robotgo.KeyTap("space")
		}
	}
}
