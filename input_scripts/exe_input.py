import csv
import mysql.connector

filename = "input_scripts/exe.csv"
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
    '''executive(username, name, passwd, department, hq_id)'''
    s=f'''insert into executive({field[0]}, {field[1]}, {field[2]}, {field[3]}, {field[4]}) values( '{row[0]}', '{row[1]}', '{row[2]}', '{row[3]}', {row[4]})'''
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
