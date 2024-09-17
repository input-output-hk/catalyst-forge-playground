package main

import "testing"

func TestGreet(t *testing.T) {
	want := "Hello, Alice!"
	got := Greet("Alice")

	if got != want {
		t.Errorf("Greet() = %q; want %q", got, want)
	}
}
