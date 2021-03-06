ratings = LOAD 'ml-100k/u.data' 
AS (userID:int, movieID:int, rating:int, ratingTime:int);
metadata = LOAD 'ml-100k/u.item' USING PigStorage('|')
AS (movieID:int, movieTitle:chararray, releaseDate:chararray, 
videoRelease:chararray, imdbLink:chararray);

ratings_list = FOREACH ratings GENERATE movieID, rating;
nameLookup = FOREACH metadata GENERATE movieID, movieTitle; 
ratings_title = JOIN ratings_list BY movieID, nameLookup BY movieID;

DESCRIBE ratings_title;

-- ratings_title: 
--      {ratings_list::movieID: int, ratings_list::rating: int,
--       nameLookup::movieID: int, nameLookup::movieTitle: chararray
--      }

ratings_dis = FOREACH ratings_title GENERATE ratings_list::movieID as movieID, 
  ratings_list::rating as rating, nameLookup::movieTitle as movieTitle;

DESCRIBE ratings_dis;

-- ratings_dis: 
--    {movieID: int, rating: int, movieTitle: chararray}