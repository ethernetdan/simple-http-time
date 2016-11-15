package main

import (
	"fmt"
	"log"
	"net/http"
	"time"
)

func sayDate(w http.ResponseWriter, _ *http.Request) {
	fmt.Fprintln(w, time.Now().String())
}

func main() {
	http.HandleFunc("/", sayDate)
	err := http.ListenAndServe(":9090", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}
