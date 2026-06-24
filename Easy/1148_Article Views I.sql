# solution to find all the authors that viewed at least one of their own articles.

SELECT DISTINCT author_id as id
FROM Views
where author_id=viewer_id
ORDER BY author_id ;