import csv
import mysql.connector

filename = "input_scripts/category_products.csv"
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
    '''category_product( cat_id, product_id)'''
    s=f'''insert into category_product({field[0]}, {field[1]}) values('{row[0]}', '{row[1]}')'''
    try:
      mycur.execute(s)
    except Exception as e:
      print(e)
mydb.commit()
