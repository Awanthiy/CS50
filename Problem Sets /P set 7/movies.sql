 
1.sql
SELECT title FROM movies
WHERE year == 2008
10.sql
SELECT name FROM people
JOIN directors ON people.id = directors.person_id
JOIN ratings ON directors.movie_id = ratings.movie_id
WHERE ratings.rating >= 9.0
11.sql
SELECT movies.title FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
JOIN ratings ON movies.id = ratings.movie_id
WHERE name = "Chadwick Boseman"
ORDER BY rating DESC
LIMIT 5
12.sql
SELECT movies.title FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE people.name = "Johnny Depp" AND movies.title IN(
SELECT movies.title FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE people.name = "Helena Bonham Carter")
13.sql
SELECT distinct(name) FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE movies.title IN(
SELECT distinct(movies.title) FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE people.name = "Kevin Bacon" AND people.birth = 1958) AND people.name != "Kevin Bacon";
2.sql
SELECT birth FROM people
WHERE name == "Emma Stone"
3.sql
SELECT title FROM movies
WHERE year >= 2018
ORDER BY title
4.sql
SELECT COUNT(title) FROM movies
JOIN ratings ON movies.id = ratings.movie_id
WHERE rating == 10
5.sql
SELECT title, year FROM movies
WHERE title LIKE "Harry Potter%"
ORDER BY year
6.sql
SELECT AVG(rating) FROM ratings
JOIN movies ON ratings.movie_id = movies.id 
WHERE year = 2012;
7.sql
SELECT movies.title, ratings.rating FROM movies
JOIN ratings ON movies.id = ratings.movie_id
WHERE year = 2010
ORDER BY rating DESC, title
8.sql
SELECT name FROM people
JOIN stars ON people.id = person_id
JOIN movies ON movie_id = movies.id
WHERE movies.title = "Toy Story"
9.sql
SELECT name FROM people
JOIN stars ON stars.person_id = people.id
JOIN movies ON stars.movie_id = movies.id
WHERE movies.year = 2004
ORDER BY people.birth
