import csv
import mysql.connector

filename = "input_scripts/district_warehouse.csv"
fields = []
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
  fields = next(csvreader)
  for row in csvreader:
    rows.append(row)
    '''district_warehouse( district_id, warehouse_id)'''
    s=f'''insert into district_warehouse({fields[0]}, {fields[1]}) values({row[0]}, {row[1]})'''
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
