DROP database  if exists Creative_industry;

CREATE DATABASE Creative_industry;

USE creative_industry;
CREATE TABLE People(
    Person_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Stage_Name VARCHAR(100),
    Age INT,
    Nationality VARCHAR(50),
    Industry VARCHAR(50)
);
INSERT INTO People (Person_ID, Name, Stage_Name, Age, Nationality, Industry) VALUES
(1001, 'Alice Braga', 'Teresa Mendoza', 41, 'Brazilian', 'Movie'),
(1002, 'James Todd Spader', '', 64, 'American', 'Movie'),
(1003, 'Kiefer Sutherland', 'Tom Kirkman', 57, 'British-Canadian', 'Movie'),
(1004, 'Damilola Mike-Bamiloye', 'Martins Durosunya', 35, 'Nigerian', 'Movie'),
(1005, 'Dunsin Oyekan', 'Dunsin Oyekan', 39, 'Nigerian', 'Music'),
(1006, 'Nathaniel Bassey', 'Nathaniel Bassey', 42, 'Nigerian', 'Music'),
(1007, 'Asa', 'Bukola Elemide', 42, 'Nigerian', 'Music'),    
(1008, 'Cillian Murphy', 'J. Robert Oppenheimer', 48, 'Irish', 'Movie'),                                                                                                      
(1009, 'Kwesi Arthur', 'Kwesi Arthur', 29, 'Ghanaian', 'Music'),
(1010, 'Taraji P. Henson', 'Melinda', 54, 'American', 'Movie'),
(1011, 'Dennis Nana Dwamena', 'KiDi', 30, 'Ghanaian', 'Music'),
(1012, 'Bryson Tiller', 'Bryson Tiller', 31, 'American', 'Music'),
(1013, 'Mandisa', '', 47, 'American', 'Music'),
(1014, 'Kari Jobe', 'Kari Jobe', 43, 'American', 'Music'),
(1015, 'Jason Bateman', '', 55, 'American', 'Movie'),
(1016, 'Lee Jun-Ho', '', 34, 'Korean', 'Both'),
(1017, '', 'Black Sheriff', 22, 'Ghanaian', 'Music'),
(1018, 'Jacqueline Nyamekye', 'Gyakie', 24, 'Ghanaian', 'Music'),
(1019, 'Beyoncé Giselle Knowles-Carter', 'Beyonce', 43, 'American', 'Music'),
(1020, '', 'Nickie Minaj', 41, 'Trinidadian', 'Music'),              
(1021, 'Halle Bailey', 'Halle Bailey', 24, 'American', 'Both'),                                                                                                   
(1022, 'Stefani Joanne Angelina Germanotta', 'Lady Gaga', 38, 'American', 'Music'),
(1023, 'Tiger Shroff', '', 34, 'Indian', 'Movie'),
(1024, 'Donnie Yen', 'IP Man', 61, 'Chinese', 'Movie'),
(1025, 'Jackie Chan', 'Wong Fei Hung', 70, 'Chinese', 'Movie'),
(1026, 'Arijit Singh', '', 37, 'Indian', 'Music'),
(1027, 'Andrea Bocelli', 'Andrea Bocelli', 56, 'Italian', 'Music'),
(1028, 'Oprah Winfrey', 'Sofia', 70, 'American', 'Movie'),
(1029, 'Scarlett Johanson', 'Black Widow', 39, 'American', 'Movie'),
(1030, 'Maite Perroni', 'Marie Chuy', 41, 'Mexican', 'Movie');

DROP TABLE if exists Music;
CREATE TABLE Music (
    Music_ID INT PRIMARY KEY,
    Person_ID INT,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    Release_Date DATE
);

INSERT INTO Music (Music_ID, Person_ID, Title, Genre, Release_Date) VALUES
(3001, 1005, 'The Anthem', 'Gospel', '2021-11-13'),
(3002, 1006, 'Ebenezer', 'Gospel', '2021-08-13'),
(3003, 1007, 'Fire on the Mountain', 'Afrobeat&Soul', '2007-04-21'),
(3004, 1009, 'Nirvana', 'Hip Pop & Rap', '2021-11-25'),
(3005, 1011, 'Lomo Lomo', 'Afrobeat', '2024-08-12'),
(3006, 1012, 'Don\'t', 'Genre', '2015-05-20'),
(3007, 1013, 'Overcomer', 'Gospel', '2013-08-27'),
(3008, 1014, 'The Garden', 'Gospel', '2017-02-03'),                                                                                                                    (3009, 1016, 'My House', 'K-Pop', '2015-06-15'),
(3010, 1017, 'Run', 'Afrobeat', '2023-06-09'),
(3011, 1018, 'Rent Free', 'Afrobeat', '2023-10-27'),
(3012, 1019, 'Brown Skin Girl', 'R&B', '2020-08-24'),
(3013, 1020, 'Anaconda', 'Rap', '2014-08-04'),
(3014, 1021, 'Angel', 'R&B', '2023-08-24'),
(3015, 1022, 'Million Reasons', 'Pop', '2016-10-28'),
(3016, 1026, 'Tum Hi ho', 'Romance', '2013-03-23'),
(3017, 1027, 'Quizas', 'Classical', '2013-12-03');

select* 
from Music;

DROP TABLE if exists Movies;
CREATE TABLE Movies (
    Movie_ID INT PRIMARY KEY,
    Person_ID INT,
    Title VARCHAR(100),
    Stage_Name VARCHAR(100),
    Genre VARCHAR(100),
    Release_Date DATE
);

INSERT INTO Movies (Movie_ID, Person_ID, Title, Stage_Name, Genre, Release_Date) VALUES
(2001, 1001, 'Queen of the South', 'Teresa Mendoza', 'Crime, Drama, Thriller', '2016-06-23'),
(2002, 1002, 'Blacklist', 'Raymond Reddington', 'Crime, Drama, Thriller', '2013-09-23'),
(2003, 1003, 'Designated Survivor', 'Tom Kirkman', 'Political Drama, Thriller', '2016-09-21'),
(2004, 1004, 'Abattoir', 'Martins Durosunya', 'Horror', '2016-06-07'),
(2005, 1008, 'Oppenheimer', 'J. Robert Oppenheimer', 'Biography, Drama, History', '2023-07-21'),
(2006, 1010, 'Acrimony', 'Melinda', 'Psychological Thriller', '2018-03-30'),
(2007, 1015, 'The Ozarks', 'Marty Byrde', 'Crime, Drama, Thriller', '2017-07-21'),                                                               
(2008, 1016, 'King The Land', 'Goo Won', 'Romantic Comedy', '2023-06-17'),
(2011, 1021, 'The Little Mermaid', 'Ariel', 'Fantasy, Musical', '2023-05-26'),
(2013, 1023, 'War', 'Khalid', 'Action, Thriller', '2019-10-02'),
(2014, 1024, 'IP Man', 'IP Man', 'Action, Biography', '2008-12-12'),
(2015, 1025, 'Drunken Master', 'Wong Fei Hung', 'Action, Comedy', '1978-10-05'),
(2016, 1028, 'The Colour Purple', 'Sofia', 'Drama', '1985-12-18'),
(2017, 1029, 'Avengers', 'Black Widow', 'Action, Adventure, Sci-Fi', '2012-05-04'),
(2018, 1030, 'Don’t Mess With An Angel', 'Marie Chuy', 'Drama, Romance', '2008-03-05');

DROP TABLE if exists Music_Production;
CREATE TABLE Music_Production (
    MUP_ID INT PRIMARY KEY,
    Person_ID INT,
    Musician VARCHAR(100),
    Monthly_Listeners_Spotify VARCHAR(50),
    Recognized_Awards_Won INT,
    Award_Nominations INT,
    Number_Albums_Released INT,
    Number_Single_Songs_Released INT,
    Current_Net_Worth_USD VARCHAR(50)
);

INSERT INTO Music_Production (MUP_ID, Person_ID, Musician, Monthly_Listeners_Spotify, Recognized_Awards_Won, Award_Nominations, Number_Albums_Released, Number_Single_Songs_Released, Current_Net_Worth_USD) VALUES
(4001, 1005, 'Dunsin Oyekan', '1.2 million', 5, 10, 4, 20, '$1 million'),
(4002, 1006, 'Nathaniel Bassey', '1.5 million', 7, 12, 6, 25, '$1.5 million'),                                                                                 (4003, 1007, 'Asa (Bukola Elemide)', '2 million', 10, 15, 5, 30, '$2 million'),
(4004, 1009, 'Kwesi Arthur', '1.8 million', 3, 8, 2, 15, '$800,000'),
(4005, 1011, 'KiDi', '1.7 million', 4, 9, 3, 18, '$1 million'),
(4006, 1012, 'Bryson Tiller', '6 million', 8, 20, 3, 25, '$2 million'),
(4007, 1030, 'Mandisa', '1 million', 11, 20, 5, 30, '$3 million'),
(4008, 1014, 'Kari Jobe', '2.5 million', 9, 18, 7, 35, '$4 million'),
(4009, 1017, 'Black Sherif', '2.3 million', 2, 5, 1, 10, '$500,000'),
(4010, 1018, 'Gyakie', '1.1 million', 1, 3, 1, 8, '$300,000'),
(4011, 1019, 'Beyonce', '50 million', 28, 79, 6, 70, '$500 million'),
(4012, 1020, 'Nicki Minaj', '40 million', 12, 100, 4, 120, '$100 million'),
(4013, 1022, 'Lady Gaga', '45 million', 13, 29, 6, 40, '$320 million'),
(4014, 1026, 'Arijit Singh', '20 million', 10, 20, 7, 50, '$25 million'),
(4015, 1027, 'Andrea Bocelli', '10 million', 5, 10, 15, 30, '$100 million'),
(4016, 1028, 'Halle Bailey', '1.6 million', 6, 15, 2, 2, '$20 million'),
(4017, 1016, 'Lee Jun-Ho', '54.6k', 12, 25, 12, 15, '$16.6 million');




DROP TABLE if exists Movie_Production ;

CREATE TABLE Movie_Production (
    MOP_ID INT PRIMARY KEY,
    Awards_Won INT,
    Award_Nominations INT,
    Person_ID INT,
    Actor_Actress_Name VARCHAR(255),
    Number_of_Series_Starred_In INT,
    Number_of_Movies_Featured_In INT,
    Current_Net_Worth_USD DECIMAL(15, 2)
);

INSERT INTO Movie_Production (MOP_ID, Person_ID, Actor_Actress_Name, Awards_Won, Award_Nominations, Number_of_Series_Starred_In, Number_of_Movies_Featured_In, Current_Net_Worth_USD)
VALUES
(5001, 1001, 'Alice Braga', 3, 10, 5, 20, 2000000.00),
(5002, 1002, 'James Todd Spader', 3, 10, 10, 30, 20000000.00),
(5003, 1003, 'Kiefer Sutherland', 2, 15, 8, 40, 75000000.00),
(5004, 1004, 'Damilola Mike-Bamiloye', 5, 10, 10, 20, 500000.00),
(5005, 1008, 'Cillian Murphy', 5, 20, 7, 30, 20000000.00),
(5006, 1010, 'Taraji P. Henson', 6, 30, 15, 40, 25000000.00),
(5007, 1015, 'Jason Bateman', 5, 20, 12, 35, 30000000.00),
(5008, 1016, 'Lee Jun-Ho', 4, 10, 6, 15, 5000000.00),
(5009, 1021, 'Harley Bailey', 1, 5, 2, 10, 1000000.00),
(5010, 1023, 'Tiger Shroff', 3, 10, 0, 20, 10000000.00),
(5011, 1024, 'Donnie Yen', 10, 20, 5, 50, 40000000.00),
(5012, 1025, 'Jackie Chan', 28, 50, 10, 150, 400000000.00),
(5013, 1028, 'Oprah Winfrey', 18, 30, 5, 10, 2500000000.00),
(5014, 1029, 'Scarlett Johansson', 12, 40, 10, 50, 165000000.00),
(5015, 1030, 'Maite Perroni', 3, 10, 8, 20, 6000000.00);

SELECT*
FROM Movie_Production;

SELECT*
FROM Movies;

SELECT*
FROM Music;

SELECT*
FROM People;

###List all name,stage_name,music titles released in 2023
SELECT Name, Stage_Name,Title,Release_Date
FROM music JOIN people
ON music.Person_ID=people.Person_ID
WHERE year(Release_Date)=2023;

###List all movies and their genres for actors/actresses from the USA
SELECT Title,Genre,Nationality
FROM Movies
JOIN People 
ON Movies.Person_ID = people.Person_ID
WHERE Nationality = 'American';

###Retrieve the names of people who are in both music and movie industry
SELECT Name
FROM People 
JOIN Music 
ON people.Person_ID = music.Person_ID
JOIN Movies 
ON people.Person_ID = movies.Person_ID;

###Get the details of the top 5 most awarded actors/actresses
SELECT People.Name,movie_production.Awards_Won
FROM people 
JOIN movie_production
ON people.Person_ID=movie_production.Person_ID
ORDER BY movie_production.Awards_Won DESC
LIMIT 5;

###Retrieve the names and net worth of artists who have starred in more than 20 movies
SELECT people.Name, movie_production.Number_of_Movies_Featured_In ,movie_production.Current_Net_Worth_USD
FROM people JOIN movie_production
ON people.Person_ID=movie_production.Person_ID
WHERE Number_of_Movies_Featured_In>20
ORDER BY movie_production.Number_of_Movies_Featured_In desc;

###Classify actors/actresses based on the number of movies they have featured in
SELECT people.Stage_Name, people.Name,movie_production.Number_of_Movies_Featured_In,
CASE
    WHEN movie_production.Number_of_Movies_Featured_In < 20 THEN 'Few'
    WHEN movie_production.Number_of_Movies_Featured_In BETWEEN 20 AND 40 THEN 'Moderate'
    ELSE 'Many'
END AS Movie_Featured_Category
FROM People
JOIN Movie_Production ON people.Person_ID = movie_production.Person_ID
ORDER BY Movie_Featured_Category;

###List all people who have more than 10 award nominations in movie production
SELECT people.Name, movie_production.Award_Nominations
FROM people
JOIN Movie_Production ON people.Person_ID = movie_production.Person_ID
WHERE movie_production.Award_Nominations > 10;

SELECT*
FROM Movie_Production;

SELECT*
FROM Music_Production;
