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
