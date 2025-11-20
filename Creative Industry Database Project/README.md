****Creative Industry Database Project**

**A SQL Relational Database for Movies, Music, and Talent Analytics**

**Overview****

The Creative Industry Database is a relational SQL project designed to catalog and analyze information about individuals across the global movie and music industries.
It includes details on artists, actors, musicians, their creative works, award histories, net worth, and production metrics.

This project highlights SQL data modeling, querying, relational joins, classification using CASE expressions, and filtering data to answer real world questions about entertainment professionals.

The dataset was intentionally designed to be realistic, diverse, and detailed. It includes well known international figures from movies, music, K Pop, gospel, Afrobeats, Hollywood, Nollywood, and global cinema.

This project demonstrates advanced SQL skills, structured thinking, and the ability to design an end to end relational database system.

**Database Structure**

**The database contains the following tables:**

**1. People**

Stores biographical and industry information about individuals.
Includes real world attributes such as nationality, stage name, and industry classification.

**2. Music**

Holds song records, genres, release dates, and links each track to the musician who created it.

**3. Movies**

Contains movie titles, genres, release dates, and associated actors or actresses.

**4. Music_Production**

Provides deeper insights for musicians such as Spotify listeners, awards won, recognitions, albums released, and estimated net worth.

**5. Movie_Production**

Provides production metrics for actors, including awards, nominations, series, movies featured in, and net worth.

SQL Skills Demonstrated

**This project showcases:**

Relational database creation

Primary and foreign key usage

Multi table joins

Aggregation and ordering

Filtering with WHERE

Date functions

CASE classification logic

Complex multi join filtering

Extracting insights from production metadata

**Sample SQL Queries and Their Purpose**
**1. List all names, stage names, and music titles released in 2023**
SELECT Name, Stage_Name, Title, Release_Date
FROM Music 
JOIN People ON Music.Person_ID = People.Person_ID
WHERE YEAR(Release_Date) = 2023;

**2. List movies and genres for actors from the USA**
SELECT Title, Genre, Nationality
FROM Movies
JOIN People ON Movies.Person_ID = People.Person_ID
WHERE Nationality = 'American';

**3. Retrieve names of people in both music and movie industries**
SELECT Name
FROM People 
JOIN Music ON People.Person_ID = Music.Person_ID
JOIN Movies ON People.Person_ID = Movies.Person_ID;

**4. Get details of the top 5 most awarded actors**
SELECT People.Name, Movie_Production.Awards_Won
FROM People
JOIN Movie_Production ON People.Person_ID = Movie_Production.Person_ID
ORDER BY Movie_Production.Awards_Won DESC
LIMIT 5;

**5. Retrieve artists who have starred in more than 20 movies**
SELECT People.Name, Movie_Production.Number_of_Movies_Featured_In, Movie_Production.Current_Net_Worth_USD
FROM People
JOIN Movie_Production ON People.Person_ID = Movie_Production.Person_ID
WHERE Number_of_Movies_Featured_In > 20
ORDER BY Movie_Production.Number_of_Movies_Featured_In DESC;

**6. Classify actors based on movie appearances**
SELECT People.Stage_Name, People.Name, Movie_Production.Number_of_Movies_Featured_In,
CASE
    WHEN Movie_Production.Number_of_Movies_Featured_In < 20 THEN 'Few'
    WHEN Movie_Production.Number_of_Movies_Featured_In BETWEEN 20 AND 40 THEN 'Moderate'
    ELSE 'Many'
END AS Movie_Featured_Category
FROM People
JOIN Movie_Production ON People.Person_ID = Movie_Production.Person_ID
ORDER BY Movie_Featured_Category;

**7. List people with more than 10 award nominations**
SELECT People.Name, Movie_Production.Award_Nominations
FROM People
JOIN Movie_Production ON People.Person_ID = Movie_Production.Person_ID
WHERE Movie_Production.Award_Nominations > 10;

**Key Insights**

The database structure enables extensive profiling of creative industry professionals.

Querying across both music and movie records reveals multi talented individuals.

Award and nomination statistics help identify high achieving artists and actors.

Music production data such as Spotify listeners and song releases provide insights into popularity and reach.

Classification logic allows ranking actors based on the volume of movies featured in.


