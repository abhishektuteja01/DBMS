INSERT INTO 'MusicVideo'(TrackId, video_director)
SELECT TrackId, 'Dean Karr'
FROM tracks
WHERE name == 'Voodoo'