 -- faltas mais comuns
select penaltyDescrip,penaltyPosition, count(*) from penalties
group by penaltyDescrip
order by count(*) desc;

-- faltas mais comuns do Patriots
select * from players where nameFull = 'Tom Brady'; -- 20000199

select * from teamname where teamName = 'NE'; -- 3200

select penaltyDescrip, penaltyPosition, count(*) from penalties
where teamId = 3200
group by penaltyDescrip
order by count(*) desc;

-- faltas mais comuns do tom Brady
select penaltyDescrip, count(*) from penalties
where teamId = 3200 and playerId = 20000199
group by penaltyDescrip
order by count(*) desc;
select penaltyDescrip,penaltyPosition, count(*) from penalties
group by penaltyDescrip
order by count(*) desc;

-- faltas mais comuns do Patriots
select * from players where nameFull = 'Tom Brady'; -- 20000199

select * from teamname where teamName = 'NE'; -- 3200

select penaltyDescrip, penaltyPosition, count(*) from penalties
where teamId = 3200
group by penaltyDescrip
order by count(*) desc;

-- faltas mais comuns do tom Brady
select penaltyDescrip, count(*) from penalties
where teamId = 3200 and playerId = 20000199
group by penaltyDescrip
order by count(*) desc;


--alterações
alter table penalties modify column penaltyId int(11);
alter table penalties modify column teamId int(11);
alter table penalties modify column playerId int(11);