-- # Write your MySQL query statement below
-- SELECT today.id
-- FROM Weather AS today
--     INNER JOIN Weather AS yesterday 
--     			ON DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY) = today.recordDate
-- WHERE today.temperature > yesterday.temperature;


-- 풀이 2. data.add 사용
select w.id 
from weather as w left join
    (select id, temperature, date_add(recorddate,interval 1 day) as y
    from weather ) as p
    on w.recorddate = p.y
where w.temperature > p.temperature;
