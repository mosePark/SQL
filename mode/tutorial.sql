-- 25년 2월 3일 --
-- SQL SELECT
-- SELECT *
--   FROM tutorial.us_housing_units
  
-- SELECT year,
--       month,
--       south
--   FROM tutorial.us_housing_units

-- SELECT west AS "West Region"
--   FROM tutorial.us_housing_units

-- SELECT west AS West_Region,
--       south AS South_Region
--   FROM tutorial.us_housing_units;
------------------------------------------------
-- 공백과 따옴표의 중요성
-- SELECT midwest as "Midwest",
--         month as "Month",
--         month_name as "Month_name",
--         northeast as "Northeast",
--         south as "South",
--         west as "West",
--         year as "Year"
--   FROM tutorial.us_housing_units
------------------------------------------------
-- SQL LIMIT

-- SELECT *
--   FROM tutorial.us_housing_units
--   LIMIT 10


------------------------------------------------
-- SQL WHERE
-- 절은 항상 SELECT FROM WHERE 순

-- Practice Problem Did the West Region ever produce more than 50,000 housing units in one month?
-- 서부지역에서 한달에 5만채이상 주택이 공급된적 있는지?

-- SELECT *
--   FROM tutorial.us_housing_units
--   WHERE west >= 50

------------------------------------------------

-- WHERE로 필터링할때 숫자가 아닌 값을 필터링할땐 ''로 묶어준다.
-- 2월만 필터링
-- SELECT *
--   FROM tutorial.us_housing_units
--   WHERE month_name = 'February'
  
------------------------------------------------

-- 문자열에 대한 부등호의 의미?

-- SELECT *
--   FROM tutorial.us_housing_units
-- WHERE month_name > 'January'

-- 사전식 정렬 문제
-- SQL에서는 'Ja'가 'J'보다 더 큰 값으로 간주됩니다.
-- 이유는 'Ja'는 'J'보다 한 글자가 더 추가된 값이므로 더 큰 문자열로 인식되기 때문
 
-- SELECT *
--   FROM tutorial.us_housing_units
-- WHERE month_name > 'J'

-- SELECT *
--   FROM tutorial.us_housing_units
--   WHERE month_name < 'N'

------------------------------------------------
-- 파생칼럼

-- SELECT year,
--       month,
--       west,
--       south,
--       west + south AS south_plus_west
--   FROM tutorial.us_housing_units;

-- SELECT year,
--       month,
--       west,
--       south,
--       west + south - 4 * year AS nonsense_column
--   FROM tutorial.us_housing_units
