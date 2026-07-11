# A Solution to :
-- Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
-- Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.

(
SELECT u.name as results
FROM Users u
JOIN MovieRating mr
ON u.user_id = mr.user_id
GROUP BY u.user_id, u.name
ORDER BY COUNT(*) DESC, u.name ASC
LIMIT 1
)

UNION ALL

(
SELECT m.title AS results
FROM Movies M
JOIN MovieRating mr
ON m.movie_id = mr.movie_id
WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02'
GROUP BY m.movie_id, m.title
ORDER BY AVG(mr.rating) DESC, m.title ASC
LIMIT 1
);