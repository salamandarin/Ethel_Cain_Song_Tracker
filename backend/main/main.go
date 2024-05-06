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
	router.HandleFunc("/listalbums", getAlbumsHandler).Methods(http.MethodPost)

	router.HandleFunc("/getartistid", getArtistIdHandler).Methods(http.MethodPost)
	router.HandleFunc("/getalbumid", getAlbumIdHandler).Methods(http.MethodPost)

	router.HandleFunc("/searchbyreleasedate", getTrackByReleaseDateHandler).Methods(http.MethodPost)
	router.HandleFunc("/searchbyartist", getTrackByArtistHandler).Methods(http.MethodPost)
	router.HandleFunc("/searchbysongname", getTrackBySongNameHandler).Methods(http.MethodPost)
	router.HandleFunc("/searchbyalbum", getAlbumHandler).Methods(http.MethodPost)
	router.HandleFunc("/searchfortracksonalbum", getTracksOnAlbumHandler).Methods(http.MethodPost)

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

func getArtistIdHandler(w http.ResponseWriter, r *http.Request) {
	var artist models.Artists

	err := json.NewDecoder(r.Body).Decode(&artist)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	artistId := ethelcaindb.GetArtistId(ethelCainDatabase, artist.ArtistName)
	if len(artistId) == 0 {
		w.Write([]byte("Artist not found"))
		return
	}
	artistIdJson, err := json.Marshal(map[string][]int{"ArtistId": artistId})
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	enableCors(&w)
	w.Write(artistIdJson)
}

func getAlbumIdHandler(w http.ResponseWriter, r *http.Request) {
	var album models.Albums

	err := json.NewDecoder(r.Body).Decode(&album)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	albumId := ethelcaindb.GetAlbumId(ethelCainDatabase, album.AlbumTitle)
	if len(albumId) == 0 {
		w.Write([]byte("Album not found"))
		return
	}
	albumsIdJson, err := json.Marshal(map[string][]int{"AlbumId": albumId})
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	w.Write(albumsIdJson)
}

func getAlbumsHandler(w http.ResponseWriter, r *http.Request) {
	albums := ethelcaindb.GetAllAlbums(ethelCainDatabase)

	albumsJson, err := json.Marshal(albums)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	enableCors(&w)
	w.Write(albumsJson)
}

func getTrackByReleaseDateHandler(w http.ResponseWriter, r *http.Request) {
	var track models.Tracks

	err := json.NewDecoder(r.Body).Decode(&track)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	tracks := ethelcaindb.GetTrackByReleaseDate(ethelCainDatabase, track.TrackDate)
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
	var artist models.Artists

	err := json.NewDecoder(r.Body).Decode(&artist)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	artistId := ethelcaindb.GetArtistId(ethelCainDatabase, artist.ArtistName)

	tracks := ethelcaindb.GetTrackByArtistId(ethelCainDatabase, artistId)
	if len(tracks) == 0 {
		w.Write([]byte("Artist not found"))
		return
	}
	tracksJson, err := json.Marshal(tracks)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	enableCors(&w)
	w.Write(tracksJson)
}

func getTrackBySongNameHandler(w http.ResponseWriter, r *http.Request) {
	var track models.Tracks

	err := json.NewDecoder(r.Body).Decode(&track)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	tracks := ethelcaindb.GetTrackBySongName(ethelCainDatabase, track.TrackTitle)
	if len(tracks) == 0 {
		w.Write([]byte("Track not found"))
		return
	}
	tracksJson, err := json.Marshal(tracks)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	enableCors(&w)
	w.Write(tracksJson)
}

func getAlbumHandler(w http.ResponseWriter, r *http.Request) {
	var album models.Albums

	err := json.NewDecoder(r.Body).Decode(&album)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	albums := ethelcaindb.GetAlbum(ethelCainDatabase, album.AlbumTitle)
	if len(albums) == 0 {
		w.Write([]byte("Album not found"))
		return
	}
	albumsJson, err := json.Marshal(albums)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	w.Write(albumsJson)
}

func getTracksOnAlbumHandler(w http.ResponseWriter, r *http.Request) {
	var album models.Albums

	err := json.NewDecoder(r.Body).Decode(&album)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	albumId := ethelcaindb.GetAlbumId(ethelCainDatabase, album.AlbumTitle)

	tracks := ethelcaindb.GetTrackByAlbumId(ethelCainDatabase, albumId)
	if len(tracks) == 0 {
		w.Write([]byte("Track not found"))
		return
	}
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
