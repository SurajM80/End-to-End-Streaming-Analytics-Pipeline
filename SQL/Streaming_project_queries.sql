select title, release_date, vote_average, popularity
from trending_movies
where VOTE_COUNT > 100
order by VOTE_COUNT desc
limit 5;

select * from trending_movies;

select title, release_date, vote_average, popularity
from trending_movies
where popularity > 450
order by popularity desc
limit 10;


select movie_id, VOTE_COUNT
from trending_movies
order by VOTE_COUNT desc
limit 5;

#Sometimes TMDB includes upcoming movies that haven't actually been released yet, leaving the date blank.
select count(*)
from trending_movies
where release_date is null;

#A movie might be trending because a trailer dropped today, but nobody has actually seen or rated it yet. These will ruin our average rating calculations.
select count(*)
from trending_movies
where vote_count = 0;

#Let's see the range of our data to check for outliers. What is the absolute lowest popularity score in our Top 1000?
select min(popularity), max(popularity)
from trending_movies;