--ends with vowels
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiouAEIOU]$';

--starts with vowels
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU]';

---starts and ends with vowel
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';

-- ^ asserts the start of the string.
-- [aeiouAEIOU] ensures the first character is a vowel.
-- .* allows for any characters in the middle.
-- [aeiouAEIOU]$ makes sure the last character is also a vowel.

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT REGEXP '^[aeiouAEIOU]';

-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT REGEXP '[aeiouAEIOU]$';

--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU]'
  OR CITY NOT REGEXP '[aeiouAEIOU]$';


--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU]'
  AND CITY NOT REGEXP '[aeiouAEIOU]$';
