use game_sales;

select games.name, genres.name as genre, publishers.name as publisher, platform.name as platform, developer.name as developer, ratings.name as rating
from games
inner join genres on games.genres_idgenres=genres.idgenres
inner join developer on games.Developer_idDeveloper=developer.idDeveloper
inner join platform on games.Platform_idPlatform=idPlatform
inner join publishers on games.publishers_idpublishers=publishers.idpublishers
inner join ratings on games.ratings_idratings=ratings.idratings;