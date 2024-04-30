package main

import (
	"backend/models"
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
	router.HandleFunc("/listartists", getArtistsHandler).Methods(http.MethodPost)
	// router.HandleFunc("/listalbums", getAlbumsHandler).Methods(http.MethodPost)

	router.HandleFunc("/releasedatesearch", getTrackByReleaseDateHandler).Methods(http.MethodPost)
	router.HandleFunc("/artistsearch", getTrackByArtistHandler).Methods(http.MethodPost)
	router.HandleFunc("/songnamesearch", getTrackBySongNameHandler).Methods(http.MethodPost)

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

func getArtistsHandler(w http.ResponseWriter, r *http.Request) {
	artists := ethelcaindb.GetAllArtists(ethelCainDatabase)

	artistsJson, err := json.Marshal(artists)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	enableCors(&w)
	w.Write(artistsJson)
}

func getTrackByReleaseDateHandler(w http.ResponseWriter, r *http.Request) {
	var track models.Track

	err := json.NewDecoder(r.Body).Decode(&track)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	tracks := ethelcaindb.GetTrackByReleaseDate(ethelCainDatabase, track.Date)
	if len(tracks) == 0 {
		w.Write([]byte("Date not found"))
		return
	}
	tracksJson, err := json.Marshal(tracks)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	w.Write(tracksJson)
}

func getTrackByArtistHandler(w http.ResponseWriter, r *http.Request) {
	var track models.Track

	err := json.NewDecoder(r.Body).Decode(&track)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	tracks := ethelcaindb.GetTrackByArtist(ethelCainDatabase, track.Artist)
	if len(tracks) == 0 {
		w.Write([]byte("Date not found"))
		return
	}
	tracksJson, err := json.Marshal(tracks)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	w.Write(tracksJson)
}

func getTrackBySongNameHandler(w http.ResponseWriter, r *http.Request) {
	var track models.Track

	err := json.NewDecoder(r.Body).Decode(&track)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	tracks := ethelcaindb.GetTrackBySongName(ethelCainDatabase, track.Title)
	if len(tracks) == 0 {
		w.Write([]byte("Date not found"))
		return
	}
	tracksJson, err := json.Marshal(tracks)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	w.Write(tracksJson)
}

func enableCors(w *http.ResponseWriter) {
	(*w).Header().Set("Access-Control-Allow-Origin", "*")
}
