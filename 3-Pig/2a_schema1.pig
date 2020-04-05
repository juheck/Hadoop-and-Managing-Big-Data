metadata1 = LOAD 'ml-100k/u.item' USING PigStorage('|')
AS (movieID:int, movieTitle:chararray, releaseDate:chararray, 
videoRelease:chararray, imdbLink:chararray);
DESCRIBE metadata1;

metadata2 = LOAD 'ml-100k/u.item' USING PigStorage('|')
AS (movieID:chararray, movieTitle:chararray, releaseDate:chararray, 
videoRelease:chararray, imdbLink:chararray);
DESCRIBE metadata2;
    