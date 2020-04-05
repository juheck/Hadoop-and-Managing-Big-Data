metadata3 = LOAD 'ml-100k/u.item' USING PigStorage('|')
AS (movieID, movieTitle:chararray, releaseDate:chararray, 
videoRelease:chararray, imdbLink:chararray);
DESCRIBE metadata3;


metadata4 = LOAD 'ml-100k/u.item' USING PigStorage('|');
DESCRIBE metadata4;
metadata4_bis = FOREACH metadata4 GENERATE $0, $1, $2;
DESCRIBE metadata4_bis;
