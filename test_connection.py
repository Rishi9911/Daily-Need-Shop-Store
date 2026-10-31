import os

import psycopg
from dotenv import load_dotenv

load_dotenv()

try:
    with psycopg.connect(
        host=os.getenv("PGHOST"),
        port=os.getenv("PGPORT"),
        dbname=os.getenv("PGDATABASE"),
        user=os.getenv("PGUSER"),
        password=os.getenv("PGPASSWORD"),
    ) as conn:
        with conn.cursor() as cur:
            cur.execute(
                "SELECT current_database(), current_user;"
            )

            database, user = cur.fetchone()

            print("Database connection successful!")
            print(f"Database: {database}")
            print(f"User: {user}")

except psycopg.OperationalError as error:
    print("Database connection failed.")
    print(error)