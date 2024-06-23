-- List all players participating in male-T20 cricket:

SELECT player.name
FROM player
JOIN plays_sport ON player.player_id = plays_sport.player_id
JOIN sport ON plays_sport.sport_name = sport.sport_name
WHERE sport.sport_name = 'Cricket'
AND sport.category = 'male-T20';

-- Retrieve the total number of countries participating in each edition of the games:


SELECT year, no_of_countries
FROM edition;


-- Find all details of events scheduled in a particular venue 7:

 

SELECT event_id, date, time, stage, venue.name
FROM event
JOIN venue ON event.venue_id = venue.venue_id
WHERE venue.venue_id = 7;





-- List all sponsors for a specific year 2020:

 

SELECT sponsor_name
FROM sponsored_by
WHERE year = 2020;


-- Retrieve all players who have won medals in a 2020:

 

SELECT player.name, has_winner.medal_type
FROM player
JOIN has_winner ON player.player_id = has_winner.player_id
WHERE has_winner.year = 2020;


-- Count the number of tickets sold for an event with event_id 5:

 

SELECT COUNT(ticket_no) AS total_tickets_sold
FROM ticket
WHERE event_id = 5;


-- Find all staff members working in a particular venue with venue_id 16 during a specific event with event_id 5:
-- add more staff members
 

SELECT staff.name
FROM staff
JOIN works_in ON staff.staff_id = works_in.staff_id
WHERE works_in.event_id = 5;

-- List all streaming channels available in a specific country with country code IND:

 

SELECT channel_name
FROM streaming_channel
WHERE country_code = 'IND';


-- Retrieve all events where a specific player with player_id 13  is participating:

 

SELECT e.event_id, date, time, stage
FROM event as e
JOIN plays_in ON e.event_id = plays_in.event_id
WHERE plays_in.player_id = 13;


-- Count the number of matches officiated by each match official:

 

SELECT staff_id, (matches_officiated) AS total_matches_officiated
FROM match_official
GROUP BY staff_id;


-- 11. Retrieve the names of players who are playing in multiple sports:

 

SELECT DISTINCT player.name3
FROM player
JOIN plays_sport ON player.player_id = plays_sport.player_id
GROUP BY player.player_id
HAVING COUNT(DISTINCT plays_sport.sport_name) > 1;

-- 12. Find all events scheduled on a 2020-08-05:

 

SELECT event_id, date, time, stage
FROM event
WHERE date = '2020-08-05';


-- 13. List all venues and their capacities in a particular city:


SELECT name, capacity
FROM venue
WHERE city = 'Ahmedabad';

-- 14. Retrieve the names of all players who have won a gold medal:

 

SELECT player.name,has_winner.sport_name, has_winner.category
FROM player
JOIN has_winner ON player.player_id = has_winner.player_id
WHERE has_winner.medal_type = 'gold';


-- 15. Count the number of events in each sport category:

SELECT sport_name, category, COUNT(*) AS total_events
FROM event
GROUP BY sport_name, category;

-- 16. Find the average ticket price for events held in a specific venue: 

SELECT AVG(price) AS average_ticket_price
FROM ticket
WHERE event_id = 9;

------ country wise number of players 
-- 18. List all players from a specific country participating in the games:

 

SELECT name
FROM player
WHERE country_code = 'CAN';



-- 20. Find the details of all events that are yet to happen (future events):

SELECT event_id, date, time, stage
FROM event
WHERE date > '2020-08-12';



-- 21. Retrieve the total number of medals won by each country in a specific year:

 

SELECT p.country_code, COUNT(hw.medal_type) AS total_medals
FROM player p
JOIN has_winner AS hw ON p.player_id = hw.player_id
WHERE hw.year = 2020
GROUP BY p.country_code;

-- 22. Find the top 3 most popular sports based on the number of ticket sold :



SELECT  event.sport_name,event.category, COUNT(*) AS total_tickets_sold
FROM ticket
JOIN event ON ticket.event_id = event.event_id
GROUP BY event.event_id, event.sport_name
ORDER BY total_tickets_sold DESC
LIMIT 3;


-- 23. List all players who have participated in events held in a specific state:

 ---kaam ki  nahi lag rahi

SELECT DISTINCT p.name
FROM player p
JOIN plays_in pi ON p.player_id = pi.player_id
JOIN event e ON pi.event_id = e.event_id
JOIN venue v ON e.venue_id = v.venue_id
WHERE v.state = 'Gujarat';

-- 24. Retrieve the names of all players who have won a medal in a particular sport:

 
--------------not much use
SELECT DISTINCT p.name, hw.category
FROM player as  p
JOIN has_winner as  hw ON p.player_id = hw.player_id
JOIN event e ON (hw.sport_name = e.sport_name AND hw.category= e.category)
WHERE e.sport_name = 'Race'
AND hw.medal_type IS NOT NULL;




-- 27. List all players who have won medals in multiple events:


SELECT 
    hw.sport_name,
    hw.category,
    hw.medal_type,
    p.name AS player_name
FROM 
    has_winner hw
JOIN 
    player p ON hw.player_id = p.player_id
WHERE
    hw.player_id IN (
        SELECT player_id
        FROM has_winner
        GROUP BY player_id
        HAVING COUNT(*) > 1
    );


-- 28. Retrieve the names of all sports categories available in the system:

 

SELECT DISTINCT category,sport_name
FROM sport;
--29. Count the total number of events held in each venue:
 

SELECT venue.name, COUNT(*) AS total_events
FROM event
JOIN venue ON event.venue_id = venue.venue_id
GROUP BY venue.name;



-- 30. Find the total revenue generated from ticket sales for all events in a specific year:

 

SELECT SUM(price) AS total_revenue
FROM ticket
JOIN event ON ticket.event_id = event.event_id
WHERE extract(YEAR from event.date) = 2020;


-- . List all streaming channels available for a specific language:

 


SELECT sc.channel_name
FROM streaming_channel sc
JOIN languages l ON sc.channel_name = l.channel_name
WHERE l.lang_name = 'English';

--44. Count the total number of medals won by each player in a specific year:

 

SELECT p.name, COUNT(hw.medal_type) AS total_medals
FROM player p
LEFT JOIN has_winner hw ON p.player_id = hw.player_id
WHERE hw.year = 2020
GROUP BY p.name;


 --45 Retrieve the names of all players who have not won a medal in a specific category of a sport:

 ----- barabar nahi hai

SELECT DISTINCT p.name
FROM player p
JOIN has_winner hw ON p.player_id = hw.player_id
JOIN event e ON hw.event_id = e.event_id
WHERE e.category = 'male-100m'
AND hw.medal_type IS  NULL;


-- 46. List the name of all staff members who are specialized in a particular technology:

 

SELECT s.name
FROM staff s
JOIN tech_staff ts ON s.staff_id = ts.staff_id
WHERE ts.specialization = 'Web Development';


--47 List all events scheduled on a specific day of the week:

 

SELECT event_id, date, time, stage
FROM event
WHERE EXTRACT(DOW FROM date) = 6;



--48 List all events scheduled in a specific year and sorted by date and time:

 

SELECT event_id, date, time, stage
FROM event
WHERE YEAR(date) = 2020
ORDER BY date, time;


-- 49 Find the top 3 countries with the highest number of gold medals in a specific year:

 

SELECT p.country_code, COUNT(hw.medal_type) AS gold_medals
FROM player p
JOIN has_winner hw ON p.player_id = hw.player_id
WHERE hw.medal_type = 'gold' AND hw.year = 2020
GROUP BY p.country_code
ORDER BY gold_medals DESC
LIMIT 3;


-- 50. Count the total number of events in each sport category held in a specific year:

 

SELECT s.category, COUNT(*) AS total_events
FROM event e
JOIN sport AS s ON e.sport_name = s.sport_name
WHERE YEAR(e.date) = 2020
GROUP BY s.category;