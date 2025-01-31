use game_sales;


create view userscore_sales as
select idgames, user_score, global_sales
from games
where user_score >0
order by user_score;


create view criticscore_sales as
select idgames, critic_score, global_sales
from games
where critic_score >0
order by critic_score;




select  year, sum(global_sales)
from games
group by year







