CREATE SCHEMA IF NOT EXISTS school_of_it_2025;



--drop  table if exists school_of_it_2025.ICC_Champions_Trophy_2025;
CREATE TABLE school_of_it_2025.ICC_Champions_Trophy_2025 (
    match_id SERIAL PRIMARY KEY,
    Team1 VARCHAR(100) NOT NULL,
    Team2 VARCHAR(100) NOT NULL,
    match_date DATE not null
);



insert into school_of_it_2025.ICC_Champions_Trophy_2025 
(team1,team2,match_date)
values 
('NZ','PAK','02-19-2025'::DATE)
,('BAN','IND','02-20-2025'::DATE)
,('IND','PAK','02-23-2025'::DATE)
,('BAN','NZ','02-24-2025'::DATE)
,('BAN','PAK','02-27-2025'::DATE)
,('IND','NZ','03-02-2025'::DATE)

select * from school_of_it_2025.ICC_Champions_Trophy_2025;

WITH matches AS (
    SELECT
        team1 AS team,
        match_date,
        team2 AS opponent
    FROM school_of_it_2025.ICC_Champions_Trophy_2025
    UNION ALL
    SELECT
        team2 AS team,
        match_date,
        team1 AS opponent
    FROM school_of_it_2025.ICC_Champions_Trophy_2025
),
ranked_matches AS (
    SELECT
        team,
        TO_CHAR(match_date, 'DD MON') || ' vs ' || opponent AS match_details,
        ROW_NUMBER() OVER (PARTITION BY team ORDER BY match_date) AS match_number
    FROM matches
)

SELECT
    team AS "Team Name",
    MAX(CASE WHEN match_number = 1 THEN match_details END) AS "1",
    MAX(CASE WHEN match_number = 2 THEN match_details END) AS "2",
    MAX(CASE WHEN match_number = 3 THEN match_details END) AS "3"
FROM ranked_matches
GROUP BY team
ORDER BY team;

