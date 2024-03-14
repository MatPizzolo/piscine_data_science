import psycopg2

# Replace with your actual connection details
DB_NAME = "piscineds"
DB_USER = "mpizzolo"
DB_PASSWORD = "mysecretpassword"
DB_HOST = "172.17.0.1"

def create_cursor():
    try:
        conn = psycopg2.connect(dbname=DB_NAME, user=DB_USER, password=DB_PASSWORD, host=DB_HOST)
    except psycopg2.Error as e:
        print("Error connecting to database:", e)
        exit()
        
    return conn.cursor()
