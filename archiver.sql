USE traccar; 

# Position archiving 
CREATE TABLE IF NOT EXISTS tc_positions_archive LIKE tc_positions;
INSERT INTO traccar.tc_positions_archive (SELECT * FROM traccar.tc_positions WHERE servertime < DATE(DATE_ADD(NOW(), INTERVAL -180 DAY)));
DELETE FROM traccar.tc_positions WHERE servertime < DATE(DATE_ADD(NOW(), INTERVAL -180 DAY));

# Event archiving
CREATE TABLE IF NOT EXISTS tc_events_archive LIKE tc_events;
INSERT INTO traccar.tc_events_archive (SELECT * FROM traccar.tc_events WHERE eventtime < DATE(DATE_ADD(NOW(), INTERVAL -180 DAY)));
DELETE FROM traccar.tc_events WHERE eventtime < DATE(DATE_ADD(NOW(), INTERVAL -180 DAY));

# delete null coordinates
DELETE FROM traccar.tc_positions WHERE valid = 0;
