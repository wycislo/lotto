Game_Name,Month,Day,Year,Num1, Num2, Num3, Num4, Num5, Num6

use DBATools;
create table DBATools.dbo.numbers_stage (
Game_Name varchar(100),
Game_Month int,
Game_Day int,
Game_Year int,
Num1 int,
Num2 int,
Num3 int,
Num4 int,
Num5 int,
Num6 int
)

create table DBATools.dbo.numbers (
Game_Date date,
Num1 int,
Num2 int,
Num3 int,
Num4 int,
Num5 int,
Num6 int
)

create table DBATools.dbo.numbers_stage1 (
NewGame nvarchar(50))

INSERT INTO numbers_stage1 (NewGame) VALUES (value1, value2, value3, ...);


INSERT INTO numbers_stage1 (NewGame) VALUES ('Lotto Texas,2,4,2026,32,38,18,3,48,26;')
INSERT INTO numbers_stage1 (NewGame) VALUES ('Lotto Texas,2,7,2026,45,53,43,3,50,10;')
INSERT INTO numbers_stage1 (NewGame) VALUES ('Lotto Texas,2,9,2026,13,45,17,27,35,15;')
INSERT INTO numbers_stage1 (NewGame) VALUES ('Lotto Texas,2,11,2026,14,47,45,20,52,25;')

-- All picks across all draws (duplicates count)
SELECT
    v.n       AS Number,
    COUNT(*)  AS Picks
FROM DBATools.dbo.numbers AS t
CROSS APPLY (VALUES
    (t.Num1),(t.Num2),(t.Num3),
    (t.Num4),(t.Num5),(t.Num6)
) AS v(n)
GROUP BY v.n
ORDER BY Picks DESC, Number ASC;



select * from numbers_stage1

-- drop table Lotto_numbers;
-- drop table Lotto_numbers_stage;

select * from Numbers_stage


