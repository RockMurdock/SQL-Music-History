SELECT * FROM Genre;

INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ('Billy Talent', 1993);

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ('Billy Talent II', "06/27/2006", 2820, "Atlantic Records", 28, 9);

INSERT INTO Song (Title, SongLength, ReleaseDate, ArtistId, GenreId, AlbumId)
VALUES
		("Devil in a Midnight Mass", 174, "06/15/2006", 28, 9, 24),
		("Red Flag", 196, "09/11/2006", 28, 9, 24),
		("Fallen Leaves", 199, "11/19/2006", 28, 9, 24);

SELECT a.Title, s.Title, b.ArtistName FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId LEFT JOIN Artist b ON a.ArtistId = b.ArtistId WHERE b.ArtistName IS "Billy Talent";

SELECT a.Title, COUNT(s.SongId) FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId GROUP BY a.AlbumId;

SELECT a.ArtistName, COUNT(s.SongId) FROM Artist a LEFT JOIN Song s ON s.ArtistId = a.ArtistId GROUP BY a.ArtistId;

SELECT g.Label, COUNT(s.SongId) FROM Genre g LEFT JOIN Song s ON s.GenreId = g.GenreId GROUP BY s.GenreId;

SELECT a.Title, MAX(a.AlbumLength) FROM Album a;

SELECT s.Title, MAX(s.SongLength) FROM Song s;

SELECT s.Title, a.Title, MAX(s.SongLength) From Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;