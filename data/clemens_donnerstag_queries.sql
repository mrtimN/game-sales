use game_sales;


select critic_score, user_score, global_sales
from games
order by critic_score +(user_score*10) desc;




select  year, sum(global_sales)
from games
group by year






