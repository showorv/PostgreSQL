
-- timezone and without timezone
CREATE Table timez (
    ts TIMESTAMP without  time zone,
    tsz TIMESTAMP with time zone
)

INSERT INTO timez VALUES('2022-01-22 10:45:00','2022-01-22 10:45:00')


SELECT * FROM timez

SELECT now()

SELECT CURRENT_DATE

SELECT now()::TIME

SELECT now()::DATE

--format

SELECT to_char(now(), 'DDD')

SELECT to_char(now(), 'WW')

-- interval

SELECT CURRENT_DATE - INTERVAL '1 year'
SELECT DATE_ADD('2025-05-19', INTERVAL 10 DAY); 

-- age()

SELECT age(CURRENT_DATE ,'2003-01-07')

-- extract
SELECT extract ( year from '2021-01-02'::DATE)