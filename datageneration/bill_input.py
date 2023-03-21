import csv
import mysql.connector

filename = "input_scripts/bill.csv"
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
    '''bill( customer_id, store_id, date, total_amount)'''
    s=f'''insert into bill({field[0]}, {field[1]}, {field[2]}, {field[3]}) values({row[0]}, {row[1]}, '{row[2]}', {row[3]})'''
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
