package models

type Albums struct {
	AlbumId          int
	AlbumTitle       string
	AlbumDate        *string
	Artist           *int
	AlbumImage       *string
	AlbumDescription *string
}

type Artists struct {
	ArtistId          int
	ArtistName        string
	ArtistRealName    *string
	ArtistImage       *string
	ArtistDescription *string
}

type Tracks struct {
	TrackId     int
	TrackTitle  string
	TrackLength string
	TrackDate   *string
	Album       *int
	Artist      *int
	TrackImage  *string
	TrackNotes  *string
}
