import psycopg2
import sys


conn = psycopg2.connect(database="quay",
                        host=sys.argv[1],
                        user="quay",
                        password=sys.argv[2],
                        port="5432")

# Open a cursor to perform database operations
cursor = conn.cursor()
# Tables to skip
skip_tables = [ 'alembic_version', 'awsdms_apply_exceptions' ]


def get_max_value_for_table(table_name):
    cursor.execute(f"""SELECT MAX(id) FROM public.{table_name}""")
    row = cursor.fetchone()
    return row[0] if row[0] else 0


def update_sequence(table_name, start_value):
    q = f"""ALTER SEQUENCE public.{table_name}_id_seq RESTART WITH {start_value}"""
    r = cursor.execute(q, start_value)
    conn.commit()


cursor.execute("""SELECT table_name FROM information_schema.tables
       WHERE table_schema = 'public'""")
for table in cursor.fetchall():
    table_name = table[0]
    if table_name  in skip_tables:
        continue

    print(table_name)
    max_val = get_max_value_for_table(table_name)
    update_sequence(table_name, max_val + 1)
