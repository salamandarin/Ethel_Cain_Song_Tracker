package models

type Track struct {
	TrackId int
	Title   string
	Length  int
	Date    string
	Artist  string
}

type Album struct {
	AlbumId int
	Title   string
	Date    string
}
