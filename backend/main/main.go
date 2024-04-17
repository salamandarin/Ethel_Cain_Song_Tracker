package main

import (
	"database/sql"
	"encoding/json"
	"github.com/gorilla/mux"
	_ "github.com/mattn/go-sqlite3"
	"log"
	"net/http"

	"backend/ethelcaindb"
)

var ethelCainDatabase *sql.DB

func main() {
	router := mux.NewRouter()

	var err error
	ethelCainDatabase, err = sql.Open("sqlite3", "../database/EthelCain.db")
	if err != nil {
		log.Fatal(err)
	}
	defer ethelCainDatabase.Close()

	router.HandleFunc("/", hello).Methods(http.MethodPost)
	router.HandleFunc("/listtracks", getTracksHandler).Methods(http.MethodPost)
	//router.HandleFunc("/releasedate", getTrackByReleaseDateHandler).Methods(http.MethodPost)

	http.ListenAndServe(":8000", router)
}

func hello(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Ethel!"))
}

func getTracksHandler(w http.ResponseWriter, r *http.Request) {
	tracks := ethelcaindb.GetAllTracks(ethelCainDatabase)

	tracksJson, err := json.Marshal(tracks)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	enableCors(&w)
	w.Write(tracksJson)
}

func enableCors(w *http.ResponseWriter) {
	(*w).Header().Set("Access-Control-Allow-Origin", "*")
}
