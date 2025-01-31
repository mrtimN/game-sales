use game_sales;

select *
from games
inner join genres on games.genres_idgenres=genres.idgenres

inner join developer on games.Developer_idDeveloper=developer.idDeveloper

inner join platform on games.Platform_idPlatform=idPlatform

inner join publishers on games.publishers_idpublishers=publishers.idpublishers

inner join ratings on games.ratings_idratings=ratings.idratings;