import csv
import mysql.connector

filename = "input_scripts/preservatives.csv"
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
    '''preservative( product_id, preservative_name, percentage)'''
    s=f'''insert into preservative({field[0]}, {field[1]}, {field[2]}) values('{row[0]}', '{row[1]}', {row[2]})'''

    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
