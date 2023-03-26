import csv
import mysql.connector

filename = "input_scripts/district_hq.csv"
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
    '''district_hq(street, city, pincode))'''
    s=f'''insert into district_hq({fields[0]}, {fields[1]}, {fields[2]}) values( '{row[0]}', '{row[1]}', {row[2]})'''
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
