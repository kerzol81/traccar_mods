USE traccar; 

# Position archiving 180 days 
CREATE TABLE IF NOT EXISTS tc_positions_archive LIKE tc_positions;

INSERT INTO traccar.tc_positions_archive (SELECT * FROM traccar.tc_positions WHERE servertime BETWEEN DATE_SUB(CURDATE(), INTERVAL 180 DAY) AND CURDATE() LIMIT 10000);
DELETE FROM traccar.tc_positions WHERE servertime BETWEEN DATE_SUB(CURDATE(), INTERVAL 180 DAY) AND CURDATE();


# Event archiving 180 days
CREATE TABLE IF NOT EXISTS tc_events_archive LIKE tc_events;

INSERT INTO traccar.tc_events_archive (SELECT * FROM traccar.tc_events WHERE eventtime < DATE(DATE_ADD(NOW(), INTERVAL -180 DAY)) LIMIT 10000);
DELETE FROM traccar.tc_events WHERE eventtime < DATE(DATE_ADD(NOW(), INTERVAL -180 DAY)) LIMIT 10000;
