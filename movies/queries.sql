SELECT title FROM movies WHERE year = '2008';

SELECT birth FROM people WHERE name = 'Emma Stone';

SELECT title FROM movies WHERE year >= '2018' ORDER BY title ASC;

SELECT COUNT(*) AS 'rating = 10.0' FROM ratings WHERE rating = '10.0';

SELECT title, year FROM movies WHERE title LIKE "Harry Potter%" ORDER BY year ASC;

SELECT AVG(rating) FROM movies JOIN ratings ON movies.id = ratings.movie_id WHERE year = '2012';

SELECT movies.title, ratings.rating FROM ratings INNER JOIN movies ON ratings.movie_id = movies.id WHERE movies.year = '2010' ORDER BY rating DESC, title ASC

SELECT people.name FROM ((stars INNER JOIN people ON stars.person_id = people.id) INNER JOIN movies ON stars.movie_id = movies.id) WHERE title = 'Toy Story';

SELECT DISTINCT people.name FROM ((stars INNER JOIN people ON stars.person_id = people.id) INNER JOIN movies ON stars.movie_id = movies.id) WHERE movies.year = '2004' ORDER BY people.birth ASC

SELECT people.name FROM ((directors INNER JOIN people ON directors.person_id = people.id) INNER JOIN ratings ON directors.movie_id = ratings.movie_id) WHERE ratings.rating >= '9.0';

SELECT movies.title FROM (((stars
INNER JOIN movies ON stars.movie_id = movies.id)
INNER JOIN people ON stars.person_id = people.id)
INNER JOIN ratings ON stars.movie_id = ratings.movie_id)
WHERE people.name = 'Chadwick Boseman'
ORDER BY ratings.rating DESC
LIMIT 5;

SELECT title FROM movies
INNER JOIN stars ON stars.movie_id = movies.id
INNER JOIN people ON stars.person_id = people.id
WHERE people.name = 'Bradley Cooper'
AND title IN
(SELECT title FROM movies
INNER JOIN stars ON stars.movie_id = movies.id
INNER JOIN people ON stars.person_id = people.id
WHERE people.name = 'Jennifer Lawrence');

SELECT DISTINCT name FROM people
INNER JOIN stars ON stars.person_id = people.id
INNER JOIN movies ON movies.id = stars.movie_id
WHERE movies.id IN
(SELECT movies.id FROM movies
INNER JOIN stars ON stars.movie_id = movies.id
INNER JOIN people ON people.id = stars.person_id
WHERE people.name = 'Kevin Bacon' AND people.birth = '1958')
AND people.name != 'Kevin Bacon';
