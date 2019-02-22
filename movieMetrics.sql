select genres_name, sum(Rev) as Revenue  from (
select a.movie_id, b.description as genres_name,revenue as Rev from movies_genres A 
inner join 
genres_master b on a.genres_id =b.genres_id 
inner join movies_finance c
on a.movie_id= c.movie_id) AS A
group by 1 order by Revenue desc
;


 /* Find revenues by Movie and Director */
    select a.movie_id,b.crew_name,sum(Revenue) from movies_finance a  inner join movie_crew b on 
    a.movie_id=b.movie_id where job_title='Director'
    group by a.movie_id,crew_name;

/# Revenue by language
select a.movie_id,b.crew_name,sum(Revenue) from movies_finance a  inner join movie_crew b on
   a.movie_id=b.movie_id where job_title='Director'
   group by a.movie_id,crew_name;