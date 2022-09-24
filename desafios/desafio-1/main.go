package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", exibirMensagem)
	log.Println("Servidor executandona porta http://localhost:3000")
	log.Fatal(http.ListenAndServe(":3000", nil))
}

func exibirMensagem(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Full Cycle Rocks!!!")
}
