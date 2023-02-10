import csv
import mysql.connector

filename = "input_scripts/rawmaterail_used.csv"
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
    '''rawmaterial_used( batch_id, raw_id, quantity)'''
    s=f'''insert into rawmaterial_used({field[0]}, {field[1]}, {field[2]}) values({row[0]}, {row[1]}, {row[2]})'''

    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
      
mydb.commit()
