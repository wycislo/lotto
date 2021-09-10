# connect to postgres and drop tables

# 

import pandas as pd
import os
from dotenv import load_dotenv
# Load .env enviroment variables into the notebook
load_dotenv()
# Get the postgres connection information from os file. 

import psycopg2

DB_HOST = os.getenv('DB_HOST')
DB_NAME = os.getenv('DB_NAME')
DB_USER = os.getenv('DB_USER')
DB_PASS = os.getenv('DB_PASS')

conn = psycopg2.connect(dbname=DB_NAME, user = DB_USER, 
password = DB_PASS, host = DB_HOST)


cur = conn.cursor()
cur.execute('drop table if exists lotto_stage')
conn.commit()
conn.close()

print ('drop table successful')


pd.read_csv('http://bit.ly/imdbratings')