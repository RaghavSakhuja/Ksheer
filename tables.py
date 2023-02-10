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

mycur.execute("drop table if exists rawMaterial_used")
mycur.execute("drop table if exists collective_rawMaterial")
mycur.execute("drop table if exists retailer_warehouse")
mycur.execute("drop table if exists district_warehouse")
mycur.execute("drop table if exists preservative")
mycur.execute("drop table if exists collective_phone")
mycur.execute("drop table if exists retailer_phone")
mycur.execute("drop table if exists warehouse_batch")
mycur.execute("drop table if exists bill_product")
mycur.execute("drop table if exists warehouse")
mycur.execute("drop table if exists bill")
mycur.execute("drop table if exists customer")
mycur.execute("drop table if exists batch")
mycur.execute("drop table if exists product")
mycur.execute("drop table if exists Raw_material")
mycur.execute("drop table if exists collective")
mycur.execute("drop table if exists retailer")
mycur.execute("drop table if exists executive")
mycur.execute("drop table if exists district_hq")




mycur.execute("""create table district_hq(
    hq_id int(10) primary key not null auto_increment,
    street varchar(200) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL
)""")

mycur.execute("""create table executive(
    emp_id int(10) primary key not null auto_increment,
    username varchar(50) NOT NULL unique,
    name varchar(50) NOT NULL,
    passwd varchar(50) NOT NULL,
    department varchar(50),
    hq_id int(10) NOT NULL,
    foreign key (hq_id) references district_hq(hq_id)
    )""")

mycur.execute("""create table retailer(
    store_id int(10) primary key not null auto_increment,
    street varchar(200) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL,
    name varchar(50) NOT NULL,
    username varchar(50) NOT NULL unique,
    passwd varchar(50) NOT NULL,
    profit int(10) NOT NULL default 0,
    manager_name varchar(50)
    )""")

mycur.execute("""create table collective(
    collective_id int(10) primary key not null auto_increment,
    street varchar(200) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL,
    name varchar(50) NOT NULL,
    username varchar(50) NOT NULL unique,
    passwd varchar(50) NOT NULL,
    no_of_members int(10) NOT NULL
    )""")

mycur.execute("""create table Raw_material(
    raw_id varchar(5) primary key not null,
    name varchar(50) NOT NULL,
    fat_percent int(2) NOT NULL,
    protein_percent int(2) NOT NULL,
    amount int(10) NOT NULL,
    rate int(10) NOT NULL
    )""")
mycur.execute("""create table product(
    product_id varchar(5) primary key not null,
    name varchar(50) NOT NULL,
    fat_percent int(2) NOT NULL,
    protein_percent int(2) NOT NULL,
    calories int(10) NOT NULL,
    Cost int(10) NOT NULL,
    mrp int(10) NOT NULL
    )""")

mycur.execute("""create table batch(
    batch_id int(10) primary key not null auto_increment,
    product_id varchar(5) NOT NULL,
    quantity int(10) NOT NULL,
    production_date date NOT NULL,
    expiry_date date NOT NULL,
    foreign key (product_id) references product(product_id)
    )""")

mycur.execute("""create table customer(
    customer_id int(10) primary key not null auto_increment,
    name varchar(50) NOT NULL,
    age int(3) NOT NULL,
    gender varchar(10) NOT NULL,
    phone varchar(15) unique
    )""")
mycur.execute("""create table bill(
    bill_id int(10) primary key not null auto_increment,
    customer_id int(10) NOT NULL,
    store_id int(10) NOT NULL,
    date date NOT NULL,
    total_amount int(10) NOT NULL,
    foreign key (customer_id) references customer(customer_id),
    foreign key (store_id) references retailer(store_id) 
    )""")

mycur.execute("""create table warehouse(
    warehouse_id int(10) primary key not null auto_increment,
    street varchar(200) ,
    city varchar(50) NOT NULL,
    pincode int(6) NOT NULL,
    capacity int(10) NOT NULL
    )""")

mycur.execute("""create table bill_product(
    bill_id int(10) NOT NULL,
    product_id varchar(5) NOT NULL,
    quantity int(10) NOT NULL,
    foreign key (bill_id) references bill(bill_id),
    foreign key (product_id) references product(product_id)
    )""")

mycur.execute("""create table warehouse_batch(    
    warehouse_id int(10) NOT NULL,
    batch_id int(10) NOT NULL,
    quantity int(10) NOT NULL,
    foreign key (warehouse_id) references warehouse(warehouse_id),
    foreign key (batch_id) references batch(batch_id)
    )""")

mycur.execute("""create table retailer_phone(
    store_id int(10) NOT NULL,
    phone varchar(15) NOT NULL unique,
    foreign key (store_id) references retailer(store_id)
    )""")

mycur.execute("""create table collective_phone(
    collective_id int(10) NOT NULL,
    phone varchar(15) NOT NULL unique,
    foreign key (collective_id) references collective(collective_id)
    )""")

mycur.execute("""create table preservative(
    product_id varchar(5) NOT NULL,
    preservative varchar(50) NOT NULL,
    percentage int(10) NOT NULL,
    foreign key (product_id) references product(product_id)
    )""")

mycur.execute("""create table district_warehouse(
    hq_id int(10) not null,
    warehouse_id int(10) not null,
    foreign key (hq_id) references executive(emp_id),
    foreign key (warehouse_id) references warehouse(warehouse_id)
    )""")

mycur.execute("""create table retailer_warehouse(
    store_id int(10) not null,
    warehouse_id int(10) not null,
    foreign key (store_id) references retailer(store_id),
    foreign key (warehouse_id) references warehouse(warehouse_id)
    )""")

mycur.execute("""create table collective_rawMaterial(
    collective_id int(10) not null,
    raw_id varchar(5) not null,
    supply_date date not null,
    quantity int(10) not null,
    foreign key (collective_id) references collective(collective_id),
    foreign key (raw_id) references Raw_material(raw_id)
    )""")

mycur.execute("""create table rawMaterial_used(
    batch_id int(10) not null,
    raw_id varchar(5) not null,
    quantity int(10) not null,
    foreign key (batch_id) references batch(batch_id),
    foreign key (raw_id) references Raw_material(raw_id)
    )""")

mydb.commit()



