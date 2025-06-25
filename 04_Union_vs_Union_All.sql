--Union all combines 2 tables and results all the records from both the table

select * from employee_1
union all
SELECT * from employee;

--Union removes the duplicates
select * from employee_1
union
SELECT * from employee;
--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
-- (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
(
    SELECT CITY, LENGTH(CITY) AS name_length
    FROM STATION
    ORDER BY LENGTH(CITY), CITY
    LIMIT 1
)
UNION
(
    SELECT CITY, LENGTH(CITY) AS name_length
    FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY
    LIMIT 1
);
