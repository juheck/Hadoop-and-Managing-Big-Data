ratings = LOAD 'ml-100k/u.data' 
AS (userID:int, movieID:int, rating:int, ratingTime:int);
ratingsByMovie = GROUP ratings BY movieID;

DESCRIBE ratingsByMovie;
-- ratingsByMovie:{
--    group: int, 
--    ratings: {
--       (userID: int,movieID: int,rating: int,ratingTime: int)
--    }
-- }

ILLUSTRATE ratingsByMovie;