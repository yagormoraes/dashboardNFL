select passer.playerId, draft.draftTeam as equipe,
players.nameFull as jogador,
heigth.heightInches as altura from passer
inner join players 
on passer.playerId = players.playerId
inner join draft
on passer.playerId = draft.playerId
inner join heigth
on passer.playerId = heigth.playerId
where passer.passOutcomes = 'complete' and passer.passPosition = 'QB'
group by playerId
order by count(passer.playerId) desc
limit 10;