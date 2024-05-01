-- Create Table: artists
CREATE TABLE IF NOT EXISTS artists
(
    artist_id INTEGER PRIMARY KEY,
    artist_name TEXT NOT NULL,
    artist_real_name TEXT
);

-- Create Table: ablums
CREATE TABLE IF NOT EXISTS albums
(
    album_id INTEGER PRIMARY KEY,
    album_title TEXT NOT NULL,
    album_date TEXT NOT NULL,
    album_artist INTEGER,
    album_image TEXT,
    FOREIGN KEY(album_artist) REFERENCES artists(artist_id)
);

-- Create Table: tracks
CREATE TABLE IF NOT EXISTS tracks
(
    track_id INTEGER PRIMARY KEY,
    track_title TEXT NOT NULL,
    track_length INTEGER,
    track_date TEXT,
    track_album INTEGER,
    track_artist INTEGER,
    FOREIGN KEY(track_album) REFERENCES album(album_id),
    FOREIGN KEY(track_artist) REFERENCES artists(artist_id)
);