import csv
import mysql.connector

filename = "input_scripts/collective_rawmaterial.csv"
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
    '''collective_rawmaterial( collective_id, raw_id, supply_date, quantity)'''
    s=f'''insert into collective_rawmaterial({field[0]}, {field[1]}, {field[2]}, {field[3]}) values({row[0]}, '{row[1]}', '{row[2]}', {row[3]})'''
    print(s);
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
