ratings = LOAD 'ml-100k/u.data' 
AS (userID:int, movieID:int, rating:int, ratingTime:int);

ratings_limited = LIMIT ratings 5;
DUMP ratings_limited;