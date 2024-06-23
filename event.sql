
INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
(1, '2020-07-10', '18:00:00', 'Group Stage', 1, 'Cricket', 'male-T20'),
(2, '2020-07-12', '18:00:00', 'Group Stage', 6, 'Cricket', 'male-T20'),
(3, '2020-07-14', '18:00:00', 'Semi-final', 7, 'Cricket', 'male-T20'),
(4, '2020-07-16', '18:00:00', 'Final', 11, 'Cricket', 'male-T20');


    -- Race events (male 100m)
    INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
    (8, '2020-08-05', '09:00', 'Heats', 10, 'Race', 'male-100m'),
    (9, '2020-08-05', '16:00', 'Final', 1, 'Race', 'male-100m');

    -- Race events (female 100m)
    INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
    (10, '2020-08-06', '09:00', 'Heats', 6, 'Race', 'female-100m'),
    (11, '2020-08-06', '16:00', 'Final', 7, 'Race', 'female-100m');

    -- Tennis events (male singles)
    INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
    (12, '2020-08-10', '11:00', 'Quarterfinal', 11, 'Tennis', 'male-singles'),
    (13, '2020-08-11', '11:00', 'Semifinal', 12, 'Tennis', 'male-singles'),
    (14, '2020-08-12', '11:00', 'Final', 8, 'Tennis', 'male-singles');

    -- Tennis events (mixed doubles)
    INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
    (15, '2020-08-13', '11:00', 'Quarterfinal', 9, 'Tennis', 'mixed-doubles'),
    (16, '2020-08-14', '11:00', 'Semifinal', 10, 'Tennis', 'mixed-doubles'),
    (17, '2020-08-15', '11:00', 'Final', 1, 'Tennis', 'mixed-doubles');

    -- Boxing events (male featherweight)
    INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
    (18, '2020-08-20', '14:00', 'Preliminary', 6, 'Boxing', 'male-featherweight'),
    (19, '2020-08-21', '14:00', 'Quarterfinal', 7, 'Boxing', 'male-featherweight'),
    (20, '2020-08-22', '14:00', 'Semifinal', 11, 'Boxing', 'male-featherweight'),
    (21, '2020-08-23', '14:00', 'Final', 12, 'Boxing', 'male-featherweight');28

    -- Boxing events (female middleweight)
    INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
    (22, '2020-08-24', '14:00', 'Preliminary', 8, 'Boxing', 'female-middleweight'),
    (23, '2020-08-25', '14:00', 'Quarterfinal', 9, 'Boxing', 'female-middleweight'),
    (24, '2020-08-26', '14:00', 'Semifinal', 10, 'Boxing', 'female-middleweight'),
    (25, '2020-08-27', '14:00', 'Final', 1, 'Boxing', 'female-middleweight');

    -- Cycling events (male roadrace)
    INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
    (26, '2020-09-01', '07:00', 'Race', 6, 'Cycling', 'male-roadrace'),
    (27, '2020-09-02', '07:00', 'Race', 7, 'Cycling', 'male-roadrace');

    -- Cycling events (female roadrace)
    INSERT INTO "event" ("event_id", "date", "time", "stage", "venue_id", "sport_name", "category") VALUES
    (28, '2020-09-03', '07:00', 'Race', 11, 'Cycling', 'female-roadrace'),
    (29, '2020-09-04', '07:00', 'Race', 12, 'Cycling', 'female-roadrace');
