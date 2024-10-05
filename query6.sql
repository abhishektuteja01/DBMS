-- This is a creative addition where the Query is to count number of tracks for the respective Playlist 

SELECT
	p.PlaylistId,
	p.name,
	COUNT(t.TrackId) as NumberofTracks
FROM 
	playlists p 
JOIN
	playlist_track ptrack ON ptrack.PlaylistId = p.PlaylistID
	
JOIN
	tracks t ON t.TrackId = ptrack.TrackId 
	

GROUP BY
	 p.PlaylistId, p.name
ORDER BY
	p.PlaylistId, p.name;