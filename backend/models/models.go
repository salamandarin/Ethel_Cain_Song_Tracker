package models

type Albums struct {
	AlbumId          int
	AlbumTitle       string
	AlbumDate        string
	AlbumImage       string
	AlbumDescription string
	Artist           int
}

type Artists struct {
	ArtistId          int
	ArtistName        string
	ArtistRealName    string
	ArtistImage       string
	ArtistDescription string
}

type Tracks struct {
	TrackId     int
	TrackTitle  string
	TrackLength int
	TrackDate   string
	TrackImage  string
	TrackNotes  string
	Album       int
	Artist      int
}
