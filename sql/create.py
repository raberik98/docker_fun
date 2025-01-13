import psycopg2

host = "localhost"
dbname = "people"
user = "admin"
password = "password"

sql_file_path = "./create.sql"

try:
    conn = psycopg2.connect(
        host=host,
        dbname=dbname,
        user=user,
        password=password
    )

    cur = conn.cursor()

    with open(sql_file_path, 'r') as file:
        sql_content = file.read()

    cur.execute(sql_content)

    conn.commit()

    cur.close()
    conn.close()

    print("SQL script executed successfully.")

except Exception as e:
    print(f"An error occurred: {e}")
