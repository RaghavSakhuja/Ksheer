from django.db import models

class Batch(models.Model):
    batch_id = models.AutoField(primary_key=True)
    product = models.ForeignKey('Product', models.DO_NOTHING)
    quantity = models.IntegerField()
    production_date = models.DateField()
    expiry_date = models.DateField()
    class Meta:
        managed = False
        db_table = 'batch'

class Bill(models.Model):
    bill_id = models.AutoField(primary_key=True)
    customer = models.ForeignKey('Customer', models.DO_NOTHING)
    store = models.ForeignKey('Retailer', models.DO_NOTHING)
    date = models.DateField()
    total_amount = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'bill'

class BillProduct(models.Model):
    bill = models.ForeignKey(Bill, models.DO_NOTHING)
    product = models.ForeignKey('Product', models.DO_NOTHING)
    quantity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'bill_product'

class Collective(models.Model):
    collective_id = models.AutoField(primary_key=True)
    street = models.CharField(max_length=200, blank=True, null=True)
    city = models.CharField(max_length=50)
    pincode = models.IntegerField()
    name = models.CharField(max_length=200)
    username = models.CharField(unique=True, max_length=200)
    passwd = models.CharField(max_length=50)
    no_of_members = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'collective'

class CollectivePhone(models.Model):
    collective = models.ForeignKey(Collective, models.DO_NOTHING)
    phone = models.CharField(unique=True, max_length=15)

    class Meta:
        managed = False
        db_table = 'collective_phone'

class CollectiveRawmaterial(models.Model):
    collective = models.ForeignKey(Collective, models.DO_NOTHING)
    raw = models.ForeignKey('RawMaterial', models.DO_NOTHING)
    supply_date = models.DateField()
    quantity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'collective_rawmaterial'

class Customer(models.Model):
    customer_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    age = models.IntegerField()
    gender = models.CharField(max_length=10)
    phone = models.CharField(unique=True, max_length=15, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'customer'

class DistrictHq(models.Model):
    hq_id = models.AutoField(primary_key=True)
    street = models.CharField(max_length=200, blank=True, null=True)
    city = models.CharField(max_length=50)
    pincode = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'district_hq'

class DistrictWarehouse(models.Model):
    hq = models.ForeignKey(DistrictHq, models.DO_NOTHING)
    warehouse = models.ForeignKey('Warehouse', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'district_warehouse'

class Executive(models.Model):
    emp_id = models.AutoField(primary_key=True)
    username = models.CharField(unique=True, max_length=200)
    name = models.CharField(max_length=200)
    passwd = models.CharField(max_length=50)
    department = models.CharField(max_length=50, blank=True, null=True)
    hq = models.ForeignKey(DistrictHq, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'executive'

class Preservative(models.Model):
    product = models.ForeignKey('Product', models.DO_NOTHING)
    name = models.CharField(max_length=50)
    amount = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'preservative'

class Product(models.Model):
    product_id = models.CharField(primary_key=True, max_length=5)
    name = models.CharField(max_length=200)
    fat_percent = models.IntegerField()
    protein_percent = models.IntegerField()
    calories = models.IntegerField()
    cost = models.IntegerField(db_column='Cost')  # Field name made lowercase.
    mrp = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'product'

class RawMaterial(models.Model):
    raw_id = models.CharField(primary_key=True, max_length=5)
    name = models.CharField(max_length=200)
    fat_percent = models.IntegerField()
    protein_percent = models.IntegerField()
    amount = models.IntegerField()
    rate = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'raw_material'

class RawmaterialUsed(models.Model):
    batch = models.ForeignKey(Batch, models.DO_NOTHING)
    raw = models.ForeignKey(RawMaterial, models.DO_NOTHING)
    quantity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'rawmaterial_used'

class Retailer(models.Model):
    store_id = models.AutoField(primary_key=True)
    street = models.CharField(max_length=200, blank=True, null=True)
    city = models.CharField(max_length=50)
    pincode = models.IntegerField()
    name = models.CharField(max_length=200)
    username = models.CharField(unique=True, max_length=200)
    passwd = models.CharField(max_length=50)
    profit = models.IntegerField()
    manager_name = models.CharField(max_length=200, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'retailer'

class RetailerPhone(models.Model):
    store = models.ForeignKey(Retailer, models.DO_NOTHING)
    phone = models.CharField(unique=True, max_length=15)

    class Meta:
        managed = False
        db_table = 'retailer_phone'

class RetailerWarehouse(models.Model):
    store = models.ForeignKey(Retailer, models.DO_NOTHING)
    warehouse = models.ForeignKey('Warehouse', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'retailer_warehouse'

class Warehouse(models.Model):
    warehouse_id = models.AutoField(primary_key=True)
    street = models.CharField(max_length=200, blank=True, null=True)
    city = models.CharField(max_length=50)
    pincode = models.IntegerField()
    capacity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'warehouse'

class WarehouseBatch(models.Model):
    warehouse = models.ForeignKey(Warehouse, models.DO_NOTHING)
    batch = models.ForeignKey(Batch, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'warehouse_batch'