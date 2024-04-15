package main

import (
	"database/sql"
	"encoding/json"
	"github.com/gorilla/mux"
	_ "github.com/mattn/go-sqlite3"
	"log"
	"net/http"
)

var ethelCainDatabase *sql.DB

func main() {
	router := mux.NewRouter()

	var err error
	ethelCainDatabase, err = sql.Open("sqlite3", "../database/ethelcain.db")
	if err != nil {
		log.Fatal(err)
	}
	defer ethelCainDatabase.Close()

	router.HandleFunc("/", hello).Methods(http.MethodPost)
	router.HandleFunc("/releasedate", getTrackByReleaseDateHandler).Methods(http.MethodPost)

	http.ListenAndServe(":8000", router)
}

func getTrackByReleaseDateHandler(w http.ResponseWriter, r *http.Request) {
	var schoolSupply models.SchoolSupply

	err := json.NewDecoder(r.Body).Decode(&schoolSupply)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	newSchoolSupply := backpackdb.GetSchoolSupplyByName(lukesBackPackDatabase, schoolSupply)

	newSchoolSupplyJson, err := json.Marshal(newSchoolSupply)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	w.Write(newSchoolSupplyJson)
}
