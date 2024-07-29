import pandas as pd
from sqlalchemy import column
from sqlalchemy import create_engine
from sqlalchemy import select
from sqlalchemy import table



# Configuración de la conexión 
db_user = 'admin'
db_password = '#admin1234#'
db_host = 'db-af.cax30vpwie5j.us-east-1.rds.amazonaws.com'
db_port = '3306'
db_name = 'db-af'

# Crear el objeto conexión
conn = create_engine(f"mysql://{db_user}:{db_password}@{db_host}:{db_port}")

with conn.begin() as connection:

    conn.execute("create table Pob_total(id integer)")
# Leer el archivo CSV
    data = pd.read_csv("./Pandas/data/9689.csv", sep = ";")


    data.to_sql('Pob_total', conn, if_exists='append', index=False)




"https://docs.sqlalchemy.org/en/20/changelog/migration_20.html"




# Pob_table = Table(
#    'Pob_table', meta, 
#    Column('id', Integer, primary_key = True), 
#    Column('Provincias', String), 
#    Column('Edad', String),
#    Column('Nacionalidad', String),
#    Column('Sexo', String),
#    Column('Periodo', String),
#    Column('Total', String),
# )
# meta.create_all(conn)

# with conn.begin() as conn:
#     conn.exec_driver_sql("create table newtable  as select * from Pob_table")

# print(data.head(10))
