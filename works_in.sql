CREATE TABLE works_in(
	staff_id INT,
	event_id INT
);

-- Insert data into works_in table for Race events (male 100m)
INSERT INTO works_in (staff_id, event_id) VALUES
(1, 8),  -- John Smith works in the male 100m race Heats
(2, 9);  -- Emily Johnson works in the male 100m race Final

-- Insert data into works_in table for Race events (female 100m)
INSERT INTO works_in (staff_id, event_id) VALUES
(3, 10),  -- Alexander Brown works in the female 100m race Heats
(4, 11);  -- Sophie Wilson works in the female 100m race Final

-- Insert data into works_in table for Tennis events (male singles)
INSERT INTO works_in (staff_id, event_id) VALUES
(5, 12),  -- Oliver Davis works in the male singles tennis Quarterfinal
(6, 13),  -- Rajesh Kumar works in the male singles tennis Semifinal
(7, 14);  -- Priya Sharma works in the male singles tennis Final

-- Insert data into works_in table for Tennis events (mixed doubles)
INSERT INTO works_in (staff_id, event_id) VALUES
(8, 15),  -- Amit Patel works in the mixed doubles tennis Quarterfinal
(9, 16),  -- Sunita Singh works in the mixed doubles tennis Semifinal
(10, 17); -- Vijay Rao works in the mixed doubles tennis Final

-- Insert data into works_in table for Boxing events (male featherweight)
INSERT INTO works_in (staff_id, event_id) VALUES
(11, 18), -- William Turner works in the male featherweight boxing Preliminary
(12, 19), -- Charlotte White works in the male featherweight boxing Quarterfinal
(13, 20), -- Ethan Thomas works in the male featherweight boxing Semifinal
(14, 21); -- Isabella Clark works in the male featherweight boxing Final

-- Insert data into works_in table for Boxing events (female middleweight)
INSERT INTO works_in (staff_id, event_id) VALUES
(15, 22), -- Liam Robinson works in the female middleweight boxing Preliminary
(16, 23), -- Ananya Roy works in the female middleweight boxing Quarterfinal
(17, 24), -- Arjun Reddy works in the female middleweight boxing Semifinal
(18, 25); -- Pooja Gupta works in the female middleweight boxing Final

-- Insert data into works_in table for Cycling events (male roadrace)
INSERT INTO works_in (staff_id, event_id) VALUES
(19, 26), -- Mohammed Ali works in the male roadrace cycling Race
(20, 27); -- Deepika Iyer works in the male roadrace cycling Race

-- Insert data into works_in table for Cycling events (female roadrace)
INSERT INTO works_in (staff_id, event_id) VALUES
(21, 28), -- James Harris works in the female roadrace cycling Race
(22, 29); -- Mia Martin works in the female roadrace cycling Race
