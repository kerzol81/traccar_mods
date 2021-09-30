import jaydebeapi
import jpype

print ('[+] Connecting to local H2 database...')

conn = jaydebeapi.connect('org.h2.Driver', 'jdbc:h2:/home/user/Documents/traccar/target/database', ["sa", ""], '/opt/traccar/lib/h2-1.4.200.jar')
curs = conn.cursor()
curs.execute('DELETE FROM tc_events WHERE eventTime < DATE(DATE_ADD(NOW(), INTERVAL -3 DAY)) LIMIT 10000')

print ('[+] Database Cleared')

conn.close()
