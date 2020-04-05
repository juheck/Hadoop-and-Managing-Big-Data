metadata = LOAD 'ml-100k/u.item' USING PigStorage('|')
AS (movieID:int, movieTitle:chararray, releaseDate:chararray, 
videoRelease:chararray, imdbLink:chararray);

STORE metadata INTO 'store_example' USING PigStorage(';');
-- DUMP metadata;