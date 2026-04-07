import sqlalchemy as SA
import pandas as pd 

engine = SA.create_engine("mysql+pymysql://root:@localhost/population_database?charset=utf8mb4")

sql = "SELECT * FROM country;"
df = pd.read_sql(sql, engine)

print(df.head())