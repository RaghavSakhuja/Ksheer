import csv
import mysql.connector

filename = "input_scripts/raw.csv"
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
    '''Raw_material(raw_id,name,fat_percent,protein_percent,amount,rate)'''
    s=f'''insert into Raw_material({field[0]}, {field[1]}, {field[2]}, {field[3]}, {field[4]}, {field[5]}) values('{row[0]}', '{row[1]}', {row[2]}, {row[3]}, {row[4]}, {row[5]})'''
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
      
mydb.commit()
