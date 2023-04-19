import csv
import mysql.connector

filename = "input_scripts/raw_material.csv"
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
  t=0
  for row in csvreader:
    rows.append(row)
    t+=1
    '''Raw_material(raw_id,name,fat_percent,protein_percent,amount,rate)'''
    s=f'''insert into Raw_material(raw_id, {field[1]}, {field[2]}, {field[3]}, {field[4]}) values('{row[0]}', '{row[1]}', {row[2]}, {row[3]}, {row[4]})'''
    print(s);
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
      
mydb.commit()
