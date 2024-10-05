--Query to select the tracks with a ' in the name

SELECT TrackId, Name FROM tracks
WHERE Name REGEXP '[áéíóúÁÉÍÓÚ]';