use game_sales;

select *
from games
inner join genres on games.genres_idgenres=genres.idgenres

inner join developer on games.Developer_idDeveloper=developer.idDeveloper

inner join platform on games.Platform_idPlatform=idPlatform

inner join publishers on games.publishers_idpublishers=publishers.idpublishers

inner join ratings on games.ratings_idratings=ratings.idratings;

create view regional_sales_by_genre as (
select ge.name, round(sum(na_sales), 2) as na_sales, round(sum(eu_sales), 2) as eu_sales, round(sum(jp_sales), 2) as jp_sales, round(sum(other_sales), 2) as other_sales, round(sum(global_sales), 2) as global_sales
from games ga
left join genres ge on ga.genres_idgenres=ge.idgenres
group by ge.name
order by ge.name);
