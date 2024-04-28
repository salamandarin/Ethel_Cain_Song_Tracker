package ethelcaindb

import (
	"backend/models"
	"database/sql"
	"log"
)

func GetAllTracks(db *sql.DB) []models.Track {
	row, err := db.Query("SELECT * FROM Track")
	if err != nil {
		log.Fatal(err)
	}
	defer row.Close()
	var tracks []models.Track
	for row.Next() {
		var trackId int
		var title string
		var length int
		var date string
		var album string
		var artist string

		row.Scan(&trackId, &title, &length, &date, &album, &artist)
		track := models.Track{
			TrackId: trackId,
			Title:   title,
			Length:  length,
			Date:    date,
			Album:   album,
			Artist:  artist,
		}
		tracks = append(tracks, track)
	}
	return tracks
}

func GetTrackByReleaseDate(db *sql.DB, releaseDate string) []models.Track {
	releaseDate = "%" + releaseDate + "%" // Adds wildcards to beginning and end of searched string
	row, err := db.Query("SELECT * FROM Track WHERE Date LIKE ?", releaseDate)
	if err != nil {
		log.Fatal(err)
	}

	defer row.Close()
	var tracks []models.Track
	for row.Next() {
		var trackId int
		var title string
		var length int
		var date string
		var album string
		var artist string
		row.Scan(&trackId, &title, &length, &date, &album, &artist)
		track := models.Track{
			TrackId: trackId,
			Title:   title,
			Length:  length,
			Date:    date,
			Album:   album,
			Artist:  artist,
		}
		tracks = append(tracks, track)
	}
	return tracks
}

func GetTrackByArtist(db *sql.DB, artist string) []models.Track {
	artist = "%" + artist + "%" // Adds wildcards to beginning and end of searched string
	row, err := db.Query("SELECT * FROM Track WHERE Artist LIKE ?", artist)
	if err != nil {
		log.Fatal(err)
	}

	defer row.Close()
	var tracks []models.Track
	for row.Next() {
		var trackId int
		var title string
		var length int
		var date string
		var album string
		var artist string
		row.Scan(&trackId, &title, &length, &date, &album, &artist)
		track := models.Track{
			TrackId: trackId,
			Title:   title,
			Length:  length,
			Date:    date,
			Album:   album,
			Artist:  artist,
		}
		tracks = append(tracks, track)
	}
	return tracks
}
