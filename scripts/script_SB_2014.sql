select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200; 

select *
from games
where seasonType='SB';

-- ALL PASS
select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2<>'pass, sacks';

-- SEA
-- PASSES
select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2='pass, complete' and possessionTeamId=4600;

select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2='pass, intercepted' and possessionTeamId=4600;

select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2='pass, sacked' and possessionTeamId=4600;

select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2='pass, incomplete' and possessionTeamId=4600;

-- NE
-- PASSES
select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2='pass, complete' and possessionTeamId=3200;

select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2='pass, intercepted' and possessionTeamId=3200;

select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2='pass, sacked' and possessionTeamId=3200;

select gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='pass' and playType2='pass, incomplete' and possessionTeamId=3200;

-- PENALTY
select distinct penalties.playId, playerId, penaltyPosition, penaltyResult, penaltyDescrip, penaltySB.gameID, penaltySB.playID, penaltySB.playType, penaltySB.possessionTeamId, penaltySB.draftTeam
from penalties
inner join (select gameId, playId, playType, playType2,  possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502 and playType='penalty') as penaltySB
on penalties.playId=penaltySB.playId;

-- KICKS
select kicks.playId, kicks.playerId, kicks.kickNetYds, kicksSB.gameId, kicksSB.playType, kicksSB.playType2, kicksSB.possessionTeamId, kicksSB.draftTeam 
from kicks
inner join (select plays.playId, gameId, playType, playType2, possessionTeamId, draftSB.draftTeam
from plays
inner join (select distinct draftTeam, teamId
from draft
where teamID=4600 or teamID=3200) as draftSB
on draftSB.teamID=plays.possessionTeamId
where gameId=56502) as kicksSB
on kicks.playId=kicksSB.playId;

-- JOGADAS
-- ALL
select gameId, count(*)
from plays
where gameId=56502;

-- TOM BRADY
select gameId, count(*) as brady_participation
from plays
where gameId=56502 and playStats like '%T.Brady%';

