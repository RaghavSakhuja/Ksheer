import csv
import mysql.connector

filename = "input_scripts/warehouse.csv"
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
    '''warehouse( street, city, pincode, capacity)'''
    s=f'''insert into warehouse({field[0]}, {field[1]}, {field[2]}, {field[3]}) values( '{row[0]}', '{row[1]}', {row[2]}, {row[3]})'''
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
