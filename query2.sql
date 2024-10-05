-- Creating trigger first to respect that every video should have a track, but each track can have zero or one videos. Next, created the query to add 10 new video directors.

CREATE TRIGGER IF NOT EXISTS every_video_has_track
BEFORE INSERT 
ON MusicVideo
BEGIN
	SELECT	
		CASE
			WHEN NEW.TrackId NOT IN 
				(SELECT TrackId FROM tracks)
			THEN
				RAISE(ABORT, "A video must have its own Track")
		END;
END;

INSERT INTO 'MusicVideo'(TrackId, video_director)
VALUES
    (1, 'Spike Jonze'),
    (2, 'David Fincher'),
    (3, 'Hype Williams'),
    (4, 'Michel Gondry'),
    (5, 'Mark Romanek'),
    (6, 'Sophie Muller'),
    (7, 'Chris Cunningham'),
    (8, 'Jonas Åkerlund'),
    (9, 'Floria Sigismondi'),
    (10, 'Joseph Kahn')
