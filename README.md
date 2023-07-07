# Ksheer: A Dairy Company
This is a database project made to Facilitate the working of a Dairy Company. It covers all the needs of dairy companies, from procuring Raw materials to billing the customers.

## Tech Stack used:
* Mysql
* CSS
* Django
* HTML

The project aims to tackle the working of a dairy company of any size. It provides a way to create the database to manage the employees, raw_materials and  products and arrange them in a well-ordered Database system. The database is in BCNF form and all the queries follow ACID properties. 

## User guide
### Homepage
Allows users to access 3 different portals for different user types.
1. Executive: The login page of executive
2. Retailer: The login page for the retailer
3. Collective: The login page for collectives
### Executive Dashboard
It is the dashboard for all the executives and employees of the company.
* Manage Inventory: To manage the products of the company
** Add product: Add a new product to the company.
** Edit product: edit the existing details of a product. The edit button
allows the details of the particular product to be edited, and the save
button saves it.
2. Manage warehouse: To add, edit or remove warehouse owned by the
company.
a. Add warehouse: to add a new warehouse
b. Create batches: create new batches using raw materials.
c. Add batch: add batches to the warehouse.
d. View batches: view the batches in the warehouse
e. Remove Warehouse: delete a warehouse owned by the company
3. Manage collective: manage the collectives which have a contract with the
company
a. add collective: add contract with a new collective
b. View collective: see the details of all the collectives of the company.
4. Manage retailer: manage the retailers associated with the company.
a. Add retailer: Add a new store where the company sells its products.
b. View retailers: view the info of existing retailers.
5. Reports: see the various reports of different parameters
a. Location: location-wise profit that the company is earning from the
retailers.
b. Capacity: location-wise capacity of warehouses of the company
c. Yearly: The yearly profits of the company
d. Retailer: retailer-wise profit
Retailer Dashboard
It is the dashboard for all the retailers associated with the company.
1. Add bill: add a bill to the database of the company
2. Add warehouse: add a warehouse for the retailer
3. Order products: Order products from the company
4. View Inventory: view the current inventory of the retailer
5. View bill: View the details of the bills of the store.
Collective Dashboard
It is the dashboard for all the collectives associated with the company.
1. Edit info: Edit the personal information of the collective
2. Supply: supply raw materials to the company
Additional Features:
1. Each page has a back and a logout button.
2. The links on the header of each page can be used to go back to previous
pages.
3. Search bars can search the table based on the first column

## Setup

### Database

import dump from `dump\final dump\final_dump1.sql`to your MySQL

### Backend

Navigate to the repository `\ksheerweb\`

run -- `python manage.py runserver`

### Frontend
On any web browser run -- `localhost:8000/ksheer`

![image](https://github.com/RaghavSakhuja/Ksheer/assets/86568413/b5320cf3-06f3-46d0-b654-c9de52dec0ea)

