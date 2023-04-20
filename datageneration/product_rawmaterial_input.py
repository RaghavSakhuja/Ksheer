import csv
import mysql.connector

filename = "input_scripts/product_rawmaterial.csv"
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
    '''product_rawmaterial( product_id, raw_id, quantity_perpiece)'''
    s=f'''insert into product_rawmaterial({field[0]}, {field[1]}, {field[2]}) values('{row[0]}', '{row[1]}', {row[2]})'''
    print(s);
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()


