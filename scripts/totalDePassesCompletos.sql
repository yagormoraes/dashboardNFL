select passer.playerId, draft.draftTeam as equipe,
players.nameFull as jogador, count(passer.playerId) as total_passes from passer
inner join players 
on passer.playerId = players.playerId
inner join draft
on passer.playerId = draft.playerId
where passer.passOutcomes = 'complete' and passer.passPosition = 'QB'
group by playerId
order by count(passer.playerId) desc
limit 10;