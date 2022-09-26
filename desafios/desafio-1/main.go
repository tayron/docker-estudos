package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", exibirMensagem)
	log.Println("Code.education Rocks!")
	log.Println("Servidor executando na porta http://localhost:3000 do container")
	log.Fatal(http.ListenAndServe(":3000", nil))
}

func exibirMensagem(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Full Cycle Rocks!!!")
}
