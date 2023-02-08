import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="ksheer"
)

print(mydb) 
'''tables:
    1. district_hq
    2. executive
    3. retailer
    4. collective
    5. Raw_material
    6. product
    7. batch
    8. customer
    9. bill
    10. warehouse
    '''

mycur=mydb.cursor()
mycur.execute("drop table if exists district_hq")
mycur.execute("""create table district_hq(
    hq_id int(10) primary key not null,
    street varchar(50) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL,
    passwd varchar(50) NOT NULL
)""")

mycur.execute("drop table if exists executive")
mycur.execute("""create table executive(
    emp_id int(10) primary key not null,
    street varchar(50) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL,
    username varchar(50) NOT NULL unique,
    name varchar(50) NOT NULL,
    passwd varchar(50) NOT NULL,
    position varchar(50) NOT NULL,
    department varchar(50)
    )""")

mycur.execute("drop table if exists retailer")
mycur.execute("""create table retailer(
    store_id int(10) primary key not null,
    street varchar(50) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL,
    name varchar(50) NOT NULL,
    username varchar(50) NOT NULL unique,
    passwd varchar(50) NOT NULL,
    profit int(10) NOT NULL default 0,
    manager_name varchar(50)
    )""")
mycur.execute("drop table if exists collective")
mycur.execute("""create table collective(
    collective_id int(10) primary key not null,
    street varchar(50) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL,
    name varchar(50) NOT NULL,
    username varchar(50) NOT NULL unique,
    passwd varchar(50) NOT NULL,
    no_of_members int(10) NOT NULL
    )""")

mycur.execute("drop table if exists Raw_material")
mycur.execute("""create table Raw_material(
    raw_id int(10) primary key not null,
    name varchar(50) NOT NULL,
    fat_percent int(2) NOT NULL,
    protein_percent int(2) NOT NULL,
    amount int(10) NOT NULL,
    rate int(10) NOT NULL
    )""")
mycur.execute("drop table if exists product")
mycur.execute("""create table product(
    product_id int(10) primary key not null,
    name varchar(50) NOT NULL,
    fat_percent int(2) NOT NULL,
    protein_percent int(2) NOT NULL,
    calories int(10) NOT NULL,
    Cost int(10) NOT NULL,
    mrp int(10) NOT NULL,
    type varchar(50) NOT NULL
    )""")

mycur.execute("drop table if exists batch")
mycur.execute("""create table batch(
    batch_id int(10) primary key not null,
    product_id int(10) NOT NULL,
    raw_id int(10) NOT NULL,
    quantity int(10) NOT NULL,
    production_date date NOT NULL,
    expiry_date date NOT NULL
    )""")

mycur.execute("drop table if exists customer")
mycur.execute("""create table customer(
    customer_id int(10) primary key not null,
    name varchar(50) NOT NULL,
    age int(3) NOT NULL,
    gender varchar(10) NOT NULL
    )""")
mycur.execute("drop table if exists bill")
mycur.execute("""create table bill(
    bill_id int(10) primary key not null,
    customer_id int(10) NOT NULL,
    store_id int(10) NOT NULL,
    date date NOT NULL,
    total_amount int(10) NOT NULL
    )""")

mycur.execute("drop table if exists warehouse")
mycur.execute("""create table warehouse(
    warehouse_id int(10) primary key not null,
    street varchar(50) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL,
    capacity int(10) NOT NULL
    )""")

mydb.commit()



