SELECT 
    playerId,
    nameFull,
    draftTeam,
    ROUND((weight * 0.453592), 2) AS peso_kg,
    ROUND((heightInches * 0.0254), 2) AS altura_m,
    ROUND((weight * 0.453592) / POW(heightInches * 0.0254, 2),
            2) AS imc
FROM
    draft_new
WHERE
    nameFull IN (SELECT DISTINCT
            nameFull
        FROM
            gameparticipation
        WHERE
            gameId = 56502)
ORDER BY imc asc;
