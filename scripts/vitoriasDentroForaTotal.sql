
-- Times que mais venceram no total
select
games.season as season,
hometeamname.teamName as homeTeam, 
visitorteamname.teamName as visitorTeam, 
teamnames_with_draws.teamName as winningTeam,
games.homeTeamFinalScore as homeTeamFinalScore,
games.visitingTeamFinalScore as visitingTeamFinalScore
from games
inner join teamnames_with_draws
on games.winningTeam = teamnames_with_draws.teamId
inner join visitorteamname
on games.visitorTeamId = visitorteamname.teamId
inner join hometeamname
on games.homeTeamId = hometeamname.teamId;

-- Times que venceram em casa
select  hometeamname.teamName , games.winningTeam , count(winningTeam)
from games
inner join teamnames_with_draws
on games.winningTeam = teamnames_with_draws.teamId
inner join visitorteamname
on games.visitorTeamId = visitorteamname.teamId
inner join hometeamname
on games.homeTeamId = hometeamname.teamId
where games.winningTeam = hometeamname.teamId
group by hometeamname.teamName;

-- Times que venceram fora de casa
select visitorteamname.teamName , games.winningTeam , count(winningTeam)
from games
inner join teamnames_with_draws
on games.winningTeam = teamnames_with_draws.teamId
inner join visitorteamname
on games.visitorTeamId = visitorteamname.teamId
inner join hometeamname
on games.homeTeamId = hometeamname.teamId
where games.winningTeam = visitorteamname.teamId
group by visitorteamname.teamName;
