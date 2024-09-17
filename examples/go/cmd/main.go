package main

import (
	"github.com/alecthomas/kong"
)

// cli is the command line interface.
var cli struct {
	Name    string `arg:"" default:"world" help:"The name to greet."`
	Version bool   `help:"Print version information."`
}

var version = "v0.1.0"

// Greet greets a person.
func Greet(name string) string {
	return "Hello, " + name + "!"
}

func main() {
	_ = kong.Parse(&cli)

	if cli.Version {
		println(version)
		return
	}

	println(Greet(cli.Name))
}
