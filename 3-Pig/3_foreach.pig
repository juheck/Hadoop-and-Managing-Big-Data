metadata = LOAD 'ml-100k/u.item' USING PigStorage('|')
AS (movieID:int, movieTitle:chararray, releaseDate:chararray, 
videoRelease:chararray, imdbLink:chararray);
     
nameLookup = FOREACH metadata GENERATE movieID, movieTitle, 
ToUnixTime(ToDate(releaseDate, 'dd-MMM-yyyy')) AS releaseTime;
-- ToUnixTime converts DateTime to Unix Time Long

DUMP nameLookup;