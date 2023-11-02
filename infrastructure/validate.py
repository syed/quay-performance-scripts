import psycopg2
import pymysql
import sys

pg_conn = psycopg2.connect(database="quay",
                        host=sys.argv[1],
                        user="quay",
                        password=sys.argv[2],
                        port="5432")


mysql_conn = pymysql.connect(host=sys.argv[3],
                             user='quay',
                             password=sys.argv[2],
                             database='quay')

# Open a cursor to perform database operations
mysql_cursor = mysql_conn.cursor()
pg_cursor = pg_conn.cursor()

skip_tables = [ 'alembic_version', 'awsdms_apply_exceptions' ]

mysql_cursor.execute("SHOW TABLES")

tables = []
for table_name in mysql_cursor:
    if table_name not in skip_tables:
        tables.append(table_name[0])


for table in tables:
    q = f"""SELECT COUNT(*) from {table}"""
    mysql_cursor.execute(q)
    mysql_count = mysql_cursor.fetchone()[0]

    pg_cursor.execute(q)
    pg_count = pg_cursor.fetchone()[0]

    status = 'OK' if mysql_count == pg_count else 'ERROR'

    print(f"{status} : {table} : mysql={mysql_count}, pg={pg_count}")
