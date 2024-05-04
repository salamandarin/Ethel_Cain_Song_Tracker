package models

type Albums struct {
	AlbumId    int
	AlbumTitle string
	AlbumDate  *string
	Artist     *int
	AlbumImage *string
}

type Artists struct {
	ArtistId       int
	ArtistName     string
	ArtistRealName *string
}

type Tracks struct {
	TrackId     int
	TrackTitle  string
	TrackLength *int
	TrackDate   *string
	Album       *int
	Artist      *int
}
