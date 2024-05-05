package ethelcaindb

import (
	"backend/models"
	"database/sql"
	"fmt"
	"log"
)

func GetAllTracks(db *sql.DB) []models.Tracks {
	row, err := db.Query("SELECT * FROM tracks")
	if err != nil {
		log.Fatal(err)
	}
	defer row.Close()
	var tracks []models.Tracks
	for row.Next() {
		var trackId int
		var title string
		var length *int
		var date *string
		var album *int
		var artist *int
		var image *string
		var notes *string

		row.Scan(&trackId, &title, &length, &date, &album, &artist, &image, &notes)
		lengthInStr := secondsToMinutes(length)
		
		track := models.Tracks{
			TrackId:     trackId,
			TrackTitle:  title,
			TrackLength: lengthInStr,
			TrackDate:   date,
			Album:       album,
			Artist:      artist,
			TrackImage:  image,
			TrackNotes:  notes,
		}
		tracks = append(tracks, track)
	}
	return tracks
}

func GetAllArtists(db *sql.DB) []models.Artists {
	row, err := db.Query("SELECT * FROM artists")
	if err != nil {
		log.Fatal(err)
	}
	defer row.Close()
	var artists []models.Artists
	for row.Next() {
		var artistId int
		var artistName string
		var artistRealName *string
		var artistImage *string
		var artistDescription *string

		row.Scan(&artistId, &artistName, &artistRealName, &artistImage, &artistDescription)
		
		artist := models.Artists{
			ArtistId:          artistId,
			ArtistName:        artistName,
			ArtistRealName:    artistRealName,
			ArtistImage:       artistImage,
			ArtistDescription: artistDescription,
		}
		artists = append(artists, artist)
	}
	return artists
}

func GetAllAlbums(db *sql.DB) []models.Albums {
	row, err := db.Query("SELECT * FROM albums")
	if err != nil {
		log.Fatal(err)
	}
	defer row.Close()
	var albums []models.Albums
	for row.Next() {
		var albumId int
		var title string
		var date *string
		var artist *int
		var image *string
		var description *string

		row.Scan(&albumId, &title, &date, &artist, &image, &description)

		album := models.Albums{
			AlbumId:          albumId,
			AlbumTitle:       title,
			AlbumDate:        date,
			Artist:           artist,
			AlbumImage:       image,
			AlbumDescription: description,
		}
		albums = append(albums, album)
	}
	return albums
}

func GetTrackByReleaseDate(db *sql.DB, releaseDate *string) []models.Tracks {
	*releaseDate = "%" + *releaseDate + "%" // Adds wildcards to beginning and end of searched string
	row, err := db.Query("SELECT * FROM tracks WHERE track_date LIKE ?", *releaseDate)
	if err != nil {
		log.Fatal(err)
	}

	defer row.Close()
	var tracks []models.Tracks
	for row.Next() {
		var trackId int
		var title string
		var length *int
		var date *string
		var album *int
		var artist *int
		var image *string
		var notes *string

		row.Scan(&trackId, &title, &length, &date, &album, &artist, &image, &notes)
		lengthInStr := secondsToMinutes(length)
		
		track := models.Tracks{
			TrackId:     trackId,
			TrackTitle:  title,
			TrackLength: lengthInStr,
			TrackDate:   date,
			Album:       album,
			Artist:      artist,
			TrackImage:  image,
			TrackNotes:  notes,
		}
		tracks = append(tracks, track)
	}
	return tracks
}

func GetTrackByArtistId(db *sql.DB, artistId []int) []models.Tracks {
	var tracks []models.Tracks
	for _, a := range artistId {
		row, err := db.Query("SELECT * FROM tracks WHERE track_artist = ?", a)
		if err != nil {
			log.Fatal(err)
		}
		defer row.Close()
		for row.Next() {
			var trackId int
			var title string
			var length *int
			var date *string
			var album *int
			var artist *int
			var image *string
			var notes *string
	
			row.Scan(&trackId, &title, &length, &date, &album, &artist, &image, &notes)
			lengthInStr := secondsToMinutes(length)
			
			track := models.Tracks{
				TrackId:     trackId,
				TrackTitle:  title,
				TrackLength: lengthInStr,
				TrackDate:   date,
				Album:       album,
				Artist:      artist,
				TrackImage:  image,
				TrackNotes:  notes,
			}
			tracks = append(tracks, track)
		}
	}
	return tracks
}

func GetTrackBySongName(db *sql.DB, songName string) []models.Tracks {
	songName = "%" + songName + "%" // Adds wildcards to beginning and end of searched string
	row, err := db.Query("SELECT * FROM tracks WHERE track_title LIKE ?", songName)
	if err != nil {
		log.Fatal(err)
	}

	defer row.Close()
	var tracks []models.Tracks
	for row.Next() {
		var trackId int
		var title string
		var length *int
		var date *string
		var album *int
		var artist *int
		var image *string
		var notes *string

		row.Scan(&trackId, &title, &length, &date, &album, &artist, &image, &notes)
		lengthInStr := secondsToMinutes(length)
		
		track := models.Tracks{
			TrackId:     trackId,
			TrackTitle:  title,
			TrackLength: lengthInStr,
			TrackDate:   date,
			Album:       album,
			Artist:      artist,
			TrackImage:  image,
			TrackNotes:  notes,
		}
		tracks = append(tracks, track)
	}
	return tracks
}

func GetAlbum(db *sql.DB, album string) []models.Albums {
	album = "%" + album + "%" // Adds wildcards to beginning and end of searched string
	row, err := db.Query("SELECT * FROM albums WHERE album_title LIKE ?", album)
	if err != nil {
		log.Fatal(err)
	}
	defer row.Close()
	var albums []models.Albums
	for row.Next() {
		var albumId int
		var title string
		var date *string
		var artist *int
		var image *string
		var description *string

		row.Scan(&albumId, &title, &date, &artist, &image, &description)

		album := models.Albums{
			AlbumId:          albumId,
			AlbumTitle:       title,
			AlbumDate:        date,
			Artist:           artist,
			AlbumImage:       image,
			AlbumDescription: description,
		}
		albums = append(albums, album)
	}
	return albums
}

func GetTrackByAlbumId(db *sql.DB, albumId []int) []models.Tracks {
	var tracks []models.Tracks
	for _, album := range albumId {
		row, err := db.Query("SELECT * FROM tracks WHERE track_album = ?", album)
		if err != nil {
			log.Fatal(err)
		}
		defer row.Close()
		for row.Next() {
			var trackId int
			var title string
			var length *int
			var date *string
			var album *int
			var artist *int
			var image *string
			var notes *string
	
			row.Scan(&trackId, &title, &length, &date, &album, &artist, &image, &notes)
			lengthInStr := secondsToMinutes(length)
			
			track := models.Tracks{
				TrackId:     trackId,
				TrackTitle:  title,
				TrackLength: lengthInStr,
				TrackDate:   date,
				Album:       album,
				Artist:      artist,
				TrackImage:  image,
				TrackNotes:  notes,
			}
			tracks = append(tracks, track)
		}
	}
	return tracks
}

func GetAlbumId(db *sql.DB, albumName string) []int {
	albumName = "%" + albumName + "%" // Adds wildcards to beginning and end of searched string
	row, err := db.Query("SELECT * FROM albums WHERE album_title LIKE ?", albumName)
	if err != nil {
		log.Fatal(err)
	}

	defer row.Close()
	var albums []int
	for row.Next() {
		var albumId int
		var title string
		var date *string
		var artist *int
		var image *string
		var description *string

		row.Scan(&albumId, &title, &date, &artist, &image, &description)
		album := models.Albums{
			AlbumId:          albumId,
			AlbumTitle:       title,
			AlbumDate:        date,
			Artist:           artist,
			AlbumImage:       image,
			AlbumDescription: description,
		}
		albums = append(albums, album.AlbumId)
	}
	return albums
}

func GetArtistId(db *sql.DB, artistName string) []int {
	artistName = "%" + artistName + "%" // Adds wildcards to beginning and end of searched string
	row, err := db.Query("SELECT * FROM artists WHERE artist_name LIKE ?", artistName)
	if err != nil {
		log.Fatal(err)
	}

	defer row.Close()
	var artists []int
	for row.Next() {
		var artistId int
		var artistName string
		var artistRealName *string
		var artistImage *string
		var artistDescription *string

		row.Scan(&artistId, &artistName, &artistRealName, &artistImage, &artistDescription)
		artist := models.Artists{
			ArtistId:          artistId,
			ArtistName:        artistName,
			ArtistRealName:    artistRealName,
			ArtistImage:       artistImage,
			ArtistDescription: artistDescription,
		}
		artists = append(artists, artist.ArtistId)
	}
	return artists
}

func secondsToMinutes(inSeconds *int) string {
	var str string
	if inSeconds != nil {
		var positiveSeconds int
		positiveSeconds = *inSeconds
		minutes := positiveSeconds / 60
		seconds := positiveSeconds % 60
		str = fmt.Sprintf("%d:%d", minutes, seconds)
	} else {
		str = fmt.Sprintf("00:00")
	}
	return str
}