import csv
import mysql.connector

filename = "input_scripts/warehouse_batch.csv"
field = []
rows = []

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="ksheer"
)

print(mydb)
mycur=mydb.cursor()

with open(filename, 'r') as csvfile:
  csvreader = csv.reader(csvfile)
  field = next(csvreader)
  for row in csvreader:
    rows.append(row)
    '''warehouse_batch( warehouse_id, batch_id)'''
    s=f'''insert into warehouse_batch({field[0]}, {field[1]}) values({row[0]}, {row[1]})''' 
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
