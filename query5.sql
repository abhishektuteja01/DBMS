--Query to get Playlist name based on the track

SELECT 
	t.TrackId as Track_id,
	t.Name as TrackName,
	p.name
FROM 
	tracks t
JOIN
	playlist_track ptrack ON ptrack.TrackId = t.TrackId
JOIN
	playlists p ON p.PlaylistID = ptrack.PlaylistId
ORDER BY
	p.name,t.Name;
	
	
	
	