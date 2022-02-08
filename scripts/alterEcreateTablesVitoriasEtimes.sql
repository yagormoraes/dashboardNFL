
alter table games
add primary key (gameId);

create table teamName(
	`teamId` int(11)  primary key,
    `teamName` varchar(11)
);

create table homeTeamName(
	`teamId` int(11)  primary key,
    `teamName` varchar(11)
);

create table visitorTeamName(
	`teamId` int(11)  primary key,
    `teamName` varchar(11)
);

create table teamNames_with_draws(
	`teamId` int(11)  primary key,
    `teamName` varchar(11)
);


alter table games add foreign key (winningTeam) references teamnames_with_draws(teamId);
alter table games add foreign key (homeTeamId) references hometeamname(teamId);
alter table games add foreign key (visitorTeamId) references visitorteamname(teamId);