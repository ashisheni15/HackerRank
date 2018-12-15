/*################################################################
Description: All the solution of HackerRank SQL track solutions
Sub-Domain: Basic SELECT

Author: Ashish Ranjan
Email: ashish.eni15@gmail.com
#################################################################*/

--Revising the Select Query I
SELECT * FROM CITY WHERE COUNTRYCODE='USA' AND POPULATION>100000;

--Revising the Select Query II
SELECT NAME FROM CITY WHERE COUNTRYCODE='USA' AND POPULATION>120000;

--Select All
SELECT * FROM CITY;

--Select By ID
SELECT * FROM CITY WHERE ID=1661;

--Japanese Cities' Attributes
SELECT * FROM CITY WHERE COUNTRYCODE='JPN';

--Japanese Cities' Names
SELECT NAME FROM CITY WHERE COUNTRYCODE='JPN';

--Weather Observation Station 1
SELECT CITY,STATE FROM STATION;

--Weather Observation Station 3
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)= 0;

--Weather Observation Station 4
SELECT COUNT(CITY)- COUNT(DISTINCT CITY) AS DIFF FROM STATION;

--Weather Observation Station 5
SELECT CITY, LEN FROM (SELECT CITY, LENGTH(CITY) AS LEN FROM STATION ORDER BY LEN DESC,CITY ASC) WHERE ROWNUM<2
UNION SELECT CITY, LEN FROM (SELECT CITY, LENGTH(CITY) AS LEN FROM STATION ORDER BY LEN ASC,CITY ASC) WHERE ROWNUM<2 ;

--Weather Observation Station 6
SELECT DISTINCT CITY FROM STATION WHERE SUBSTR(CITY,1,1) IN ('A','E','I','O','U');

--Weather Observation Station 7
SELECT DISTINCT CITY FROM STATION WHERE SUBSTR(CITY,-1,1) IN ('a','e','i','o','u');

--Weather Observation Station 8
SELECT CITY FROM STATION WHERE SUBSTR(CITY,1,1) IN ('A','E','I','O','U') AND SUBSTR(CITY,-1,1) IN ('a','e','i','o','u');

--Weather Observation Station 9
SELECT DISTINCT CITY FROM STATION WHERE SUBSTR(CITY,1,1) NOT IN ('A','E','I','O','U');

--Weather Observation Station 10
SELECT DISTINCT CITY FROM STATION WHERE  SUBSTR(CITY,-1,1) NOT IN ('a','e','i','o','u');

--Weather Observation Station 11
SELECT DISTINCT CITY FROM STATION WHERE SUBSTR(CITY,1,1) NOT IN ('A','E','I','O','U') OR SUBSTR(CITY,-1,1) NOT IN ('a','e','i','o','u');

--Weather Observation Station 12
SELECT distinct CITY FROM STATION WHERE SUBSTR(CITY,1,1) NOT IN ('A','E','I','O','U') AND SUBSTR(CITY,-1,1) NOT IN ('a','e','i','o','u');

--Higher Than 75 Marks
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY SUBSTR(NAME,-3) ASC,ID ASC;

--Employee Names
SELECT name  FROM Employee ORDER BY NAME;

--Employee Salaries
SELECT NAME FROM Employee WHERE months <10 AND salary >2000 ORDER BY employee_id;
