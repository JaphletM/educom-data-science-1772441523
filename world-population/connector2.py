import pandas as pd
import sqlalchemy as SA

engine = SA.create_engine("mysql+pymysql://root:@localhost/population_database?charset=utf8mb4")

with open("/Applications/XAMPP/xamppfiles/htdocs/educom-data-science/world-population/query.sql", "r") as f:
    sql = f.read()

df = pd.read_sql(sql, engine)

print(df.head())