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
			Album: 	 album,
			Artist:  artist,
		}
		tracks = append(tracks, track)
	}
	return tracks
}
