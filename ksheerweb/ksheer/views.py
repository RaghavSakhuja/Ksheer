from django.shortcuts import render,HttpResponse,HttpResponseRedirect,redirect
from django.urls import reverse
from .forms import *
import pandas as pd
import datetime
import mysql.connector
from django.core.exceptions import *
import copy
import json


db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="ksheer"
)
cu=db.cursor()


d={}
# Create your views here.
class executive:
    
    def executive(request):
        if request.method=="POST":
            cu=db.cursor()
            cu.execute("select * from executive where username='{}' and passwd='{}'".format(request.POST.get('username'),request.POST.get('pass')))
            cu=cu.fetchone()
            if cu!=None:  
                request.session["userid"]=request.POST.get('username')
                request.session["usertype"]="e"
                return HttpResponseRedirect("exec_dash")
            else:
                return render(request,'ksheer/executive/executive.html',context={'error':"invalid username/password"})
        else:
            return render(request,"ksheer/executive/executive.html")
    
    def exec_dash(request):
        if 'userid' in request.session:
            response=render(request,"ksheer/executive/exec_dash.html",{"name":request.session.get('userid')})
            return response
        else:
            return HttpResponseRedirect('index')
            # return render(request,"ksheer/index.html")
    
    def add_prod(request):
        if request.method=="POST":
            form=prodform(request.POST)
            if form.is_valid():
                form=form.cleaned_data
                cu=db.cursor()
                cu.execute("insert into product(product_id,name,fat_percent,protein_percent,calories,Cost,mrp) values('{}','{}',{},{},{},{},{})".format(form['product_id'],form['name'],form['fat_percent'],form['protein_percent'],form['calories'],form['cost'],form['mrp']))
                db.commit()
            return HttpResponseRedirect("add_prod")
        else:
            return render(request,"ksheer/executive/inventory/add_prod.html",{
                "form":prodform()
            })
    
    def exec_inventory(request):
        return render(request,"ksheer/executive/inventory/exec_inventory.html")
    
    def manage_ret(request):
        return render(request,"ksheer/executive/stores/manage_ret.html")
    
    def exec_reports(request):
        return render(request,"ksheer/executive/reports/reports.html")

    def exec_warehouse(request):
        return render(request,"ksheer/executive/warehouses/exec_warehouse.html")
    
    def exec_add_warehouse(request):
        if request.method=='POST':
            form=warehouseform(request.POST)
            if form.is_valid():
                form2=form.cleaned_data
                try:
                    cu=db.cursor()
                    cu.execute(f"insert into warehouse(street,city,pincode,capacity) values('{form2['street']}','{form2['city']}',{form2['pincode']},{form2['capacity']})")
                    db.commit()
                    return HttpResponseRedirect("exec_add_warehouse")
                except Exception as e:
                    return render(request,"ksheer/executive/warehouses/exec_add_warehouse.html",context={"form":form})
            else:
                return render(request,"ksheer/executive/warehouses/exec_add_warehouse.html",context={"form":form})
        else:
            return render(request,"ksheer/executive/warehouses/exec_add_warehouse.html",context={'form':warehouseform()})
    
    def make_delete_clickable(url):
        return '<a href="#" class="delete">Delete</a>'
    
    def delete_prod(request):
        if request.method=="POST":
            print(request.POST)

        cu=db.cursor()
        cu.execute("SELECT * from product")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df['link'] = df.apply(lambda x: executive.make_delete_clickable(x['product_id']), axis=1)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/executive/inventory/delete_prod.html",context={'dataframe1':df})
      
    def make_edit_clickable(url):
        return '<a href="#" class="edit">Edit</a>'
    
    def edit_prod(request):
        if request.method=="POST":
            data=request.POST.getlist('list[]')
            cu=db.cursor()
            cu.execute(f"update product set name='{data[1]}',fat_percent={float(data[2])},protein_percent={float(data[3])},calories={float(data[4])},cost={int(data[5])},mrp={int(data[6])} where product_id='{data[0]}'")
            db.commit()

        cu=db.cursor()
        cu.execute("SELECT * from product")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df['link'] = df.apply(lambda x: executive.make_edit_clickable(x['product_id']), axis=1)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/executive/inventory/edit_prod.html",context={'dataframe1':df})
    
    def exec_add_batch(request):
        if request.method=="POST":
            querydict=dict(request.POST)
            print(querydict)
            a=querydict.keys()
            cu=db.cursor()
            for i in a:
                s="begin"
                cu.execute(s)
                b=i.split("_")
                warehouse_id=b[0]
                l=querydict[i]
                for j in l:
                    k=j.split("_")
                    batch_id=k[0]
                    try:
                        cu.execute(f"insert into warehouse_batch values({warehouse_id},{batch_id})")
                    except Exception as e:
                        print(e)
                        cu.execute("rollback")
            
            db.commit()


        cu=db.cursor()
        cu.execute("SELECT batch_id,product_id,quantity FROM batch WHERE batch.batch_id NOT IN (SELECT warehouse_batch.batch_id FROM warehouse_batch) order by production_date")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        l=[]
        for index, row in df.iterrows():
            # print(str(row['batch_id'])+"_"+str(row['quantity']))
            l.append('<input type="checkbox" name="batches" value={} />'.format(str(row['batch_id'])+"_"+str(row['quantity'])))
        df.insert(3,"",l,True)
        cu=db.cursor()
        cu.execute('''SELECT warehouse.warehouse_id w_id, warehouse.street, warehouse.city, 
        warehouse.pincode, warehouse.capacity, COALESCE(SUM(batch.quantity), 0) as total_capacity
        FROM warehouse LEFT JOIN warehouse_batch ON warehouse.warehouse_id = warehouse_batch.warehouse_id
        LEFT JOIN batch ON warehouse_batch.batch_id = batch.batch_id
        GROUP BY warehouse.warehouse_id;''')
        wares=cu.fetchall()
        columns2 = [desc[0] for desc in cu.description]
        df2 = pd.DataFrame(wares, columns=columns2)
        l2=[]
        for index, row in df2.iterrows():
            l2.append('<input type="radio" name="warehouses" value={} />'.format(str(row['w_id'])+"_"+str(row["capacity"])+"_"+str(row['total_capacity'])))
        df2.insert(6,"",l2,True)
        df2=df2.to_html(classes=['table'],table_id="myTable2",index=False,render_links=True,escape=False)
        df=df.to_html(classes=['table'],table_id="myTable1",index=False,render_links=True,escape=False)
        return render(request,"ksheer/executive/warehouses/exec_add_batch.html",context={'dataframe1':df,'dataframe2':df2})

    def exec_warehouse_batch(request):
            query="""select w.warehouse_id,w.pincode,b.batch_id,b.product_id,b.quantity from 
        warehouse w,warehouse_batch wb,batch b 
        where w.warehouse_id=wb.warehouse_id and b.batch_id=wb.batch_id;
        """
            cu=db.cursor()
            cu.execute(query)
            data=cu.fetchall()
            columns = [desc[0] for desc in cu.description]
            df = pd.DataFrame(data, columns=columns)
            df.style.set_properties(**{'color': 'white', 'background-color': 'black'})
            df=df.to_html(classes=['table'],index=False,table_id="myTable")
            return render(request,"ksheer/executive/warehouses/exec_batches_report.html",context={"dataframe":df})

    def exec_ret_reports(request):
        cu=db.cursor()
        cu.execute("SET @sql=NULL")
        cu.execute("set session group_concat_max_len=10000;")
        cu.execute('''SELECT group_concat(Distinct concat(
            'SUM(case when bills.product_id="',bills.product_id,'" then bills.quantity else 0 end) as ',bills.product_id)
        )
        INTO @sql
        FROM (select store_id,product_id,quantity from bill_product natural join bill) as bills;''')
        cu.execute('''SET @sql=concat('SELECT bills.store_id, ', @sql,' from (select bill.store_id,bill_product.product_id,bill_product.quantity from bill_product 
        natural join bill) as bills group by bills.store_id order by bills.store_id');''')
        cu.execute("prepare stmt from @sql;")
        cu.execute("execute stmt;")
        data=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(data, columns=columns)
        df=df.to_html(classes=['table'],table_id="myTable",index=False)
        cu=db.cursor()    
        cu.execute("deallocate prepare stmt;")
        return render(request, 'ksheer/executive/reports/exec_ret_reports.html', context={'dataframe': df})
    
    def exec_location_profit(request):
        query="""select pincode,city,street,sum(profit),grouping(pincode),grouping(city),grouping(street) from retailer
    group by pincode,city,street with rollup order by grouping(street),grouping(city),grouping(pincode);"""
        cu=db.cursor()
        cu.execute(query)
        data=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(data, columns=columns)
        df=df.to_html(classes=['table'],table_id="myTable",index=False)
        return render(request,'ksheer/executive/reports/exec_location_profit.html',context={"dataframe":df})

    def exec_location_capacity(request):
        query="""select pincode,city,street,sum(capacity) from warehouse
        group by pincode,city,street with rollup having grouping(pincode,city,street)<>0 ;
        """
        cu=db.cursor()
        cu.execute(query)
        data=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(data, columns=columns)
        df=df.to_html(classes=['table'],table_id="myTable",index=False)
        return render(request,'ksheer/executive/reports/exec_location_capacity.html',context={"dataframe":df})

    def exec_yearly_product_report(request):
        query="""
        select product.product_id,(t2.s1*product.mrp-t2.c*product.cost) as yearly_profit 
        from product inner join (
        select sum(batch.quantity) as c,batch.product_id as pid,sale.s1 
        from batch inner join(select sum(bill_product.quantity) as s1,product_id 
        from bill_product group by bill_product.product_id) as sale on batch.product_id=sale.product_id 
        where batch.production_date between '2021-01-01' and '2022-011-01' group by batch.product_id)
        t2 on product.product_id=t2.pid;
        """
        cu=db.cursor()
        cu.execute(query)
        data=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(data, columns=columns)
        df=df.to_html(classes=['table'],table_id="myTable",index=False)
        return render(request,'ksheer/executive/reports/exec_yearly_report.html',context={"dataframe":df})

    def add_retailer(request):
        if request.method=="POST":
            form=storeform(request.POST)
            if form.is_valid():
                form=form.cleaned_data
                cu=db.cursor()
                try:
                    cu.execute(f'''insert into retailer(street,city,pincode,name,username,passwd) values("{form['street']}","{form['city']}",{form['pincode']},"{form['store_name']}","{form['username']}","{form['password']}")''')
                    db.commit()
                except Exception as e:
                    print(e)
                    
            return HttpResponseRedirect("add_retailer")
        else:
            return render(request,"ksheer/executive/stores/add_retailer.html",{
                "form":storeform()
            })

    def view_retailers(request):
        # context={"dataframe":df}
        return render(request,'ksheer/view_ret.html')  
        
    def remove_store(request):
        if request.method=="POST":
            print(request.POST)

        cu=db.cursor()
        cu.execute("SELECT * from retailer")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df['link'] = df.apply(lambda x: executive.make_delete_clickable(x['store_id']), axis=1)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/executive/stores/remove_store.html",context={'dataframe1':df})
    
    def remove_warehouse(request):
        if request.method=="POST":
            print(request.POST)

        cu=db.cursor()
        cu.execute("SELECT * from warehouse")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df['link'] = df.apply(lambda x: executive.make_delete_clickable(x['warehouse_id']), axis=1)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/executive/warehouses/remove_warehouse.html",context={'dataframe1':df})
    
    def make_getraw_clickable2(url):
        return '<input type="number" style="width:50px" disabled>'
    
    def make_getraw_clickable(url):
        return '<a href="#" class="add">Add</a>'
    
    def getraw(request):
        if request.method=="POST":
            response=dict(request.POST)
            print(response)
            cu=db.cursor()
            s="lock table collective_rawmaterial write,raw_material write"
            s="begin"    
            cu.execute(s)  
            print(request.session)
            collective_id=request.session['collective']
            a=response.keys()
            try:
                for i in a:
                    print(i,response[i][0])
                    raw_id=i
                    quantity=response[i][0]
                    supply_date=datetime.date.today()
                    print(supply_date)
                    s=f"insert into collective_rawmaterial values({collective_id},'{raw_id}','{supply_date}',{quantity})"
                    print(s)
                    cu.execute(s)
            except Exception as e:
                print(e)
                s="rollback"
                cu.execute(s)
            
            s="unlock tables"
            cu.execute(s)
            db.commit()

        cu=db.cursor()
        cu.execute(f"SELECT * from raw_material")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df['link'] = df.apply(lambda x: retailer.make_bill_clickable(x['raw_id']), axis=1)
        df['link2'] = df.apply(lambda x: retailer.make_order_clickable2(x['raw_id']), axis=1)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/collective/getraw.html",context={'dataframe1':df})
    
    def collect(request):
        return render(request,"ksheer/executive/collect/collect.html")
    
    def make_create_batches(url):
        return '''<select class="create" name={}>
                <option value="0">None</option>
                <option value="1000">1000</option>
                <option value="2500">2500</option>
                <option value="5000">5000</option>
                </select>'''.format(url)
    
    def create_batches(request):
        if request.method=="POST":
            print(request.POST)
            query=dict(request.POST)
            a=query.keys()
            cu=db.cursor()
            s="lock table batch write,product read,raw_material write,product_rawmaterial read"
            cu.execute(s)
            for i in a:
                if i!='csrfmiddlewaretoken':
                    print(i,query[i][0])
                    s="begin"
                    cu.execute(s)
                    s=f'select * from batch';
                    cu.execute(s)
                    batch=cu.fetchall()
                    batch_id=batch[-1][0]+1;
                    try:
                        s=f"insert into batch(batch_id,product_id,quantity,production_date,expiry_date) values({batch_id},'{i}',{query[i][0]},'{datetime.date.today()}','{datetime.date.today()+datetime.timedelta(days=180)}')"
                        print(s)
                        cu.execute(s)
                        s="select * from product_rawmaterial where product_id='{}'".format(i)
                        print(s)
                        cu.execute(s)
                        raw=cu.fetchall()
                        for j in raw:
                            need=j[2]
                            amount=int(query[i][0])*need
                            print(amount)
                            s=f"select * from raw_material where raw_id='{j[1]}'"
                            cu.execute(s)
                            raw_material=cu.fetchall()
                            print(raw_material)
                            quantity=int(raw_material[0][4])-amount
                            print(quantity)
                            if quantity<0:
                                raise Exception("Not enough raw material")
                            s=f"update raw_material set amount=amount-{amount} where raw_id='{j[1]}'"
                            print(s)
                            cu.execute(s)

                    except Exception as e:
                        print(e)
                        s="rollback"
                        cu.execute(s)
                        break
                        
            s="unlock tables"
            cu.execute(s)
            db.commit()
        
        cu=db.cursor()
        cu.execute(f"SELECT * from product")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df['link'] = df.apply(lambda x: executive.make_create_batches(x['product_id']), axis=1)
        # df['link2'] = df.apply(lambda x: retailer.make_order_clickable2(x['product_id']), axis=1)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/executive/warehouses/create_batches.html",context={'dataframe1':df}) 
    
    def add_collective(request):
        if request.method=="POST":
            form2=collectiveform(request.POST)
            if form2.is_valid():
                form=form2.cleaned_data
                cu=db.cursor()
                try:
                    cu.execute(f'''insert into retailer(street,city,pincode,name,username,passwd) values("{form['street']}","{form['city']}",{form['pincode']},"{form['store_name']}","{form['username']}","{form['password']}")''')
                    db.commit()
                    return HttpResponseRedirect("add_collective")
                except Exception as e:
                    return render(request,"ksheer/executive/collect/add_collective.html",{
                        "form":collectiveform(),"error":e
                    })
        else:
            return render(request,"ksheer/executive/collect/add_collective.html",{
                "form":collectiveform()
            })

class retailer:
    
    def retailer_login(request):
        return render(request,"ksheer/retailer/retailer.html")
    
    def retail_dash(request):
        if request.method=="POST":
                request.session['number']=1
                cu=db.cursor()
                cu.execute("select * from retailer where username='{}' and passwd='{}'".format(request.POST.get('username'),request.POST.get('pass')))
                cu=cu.fetchone()
                if cu!=None:  
                    request.session["userid"]=request.POST.get('username')
                    request.session['storeid']=cu[0]
                    request.session['usertype']="r"
                    response=render(request,"ksheer/retailer/retailer_dash.html",{"name":request.POST.get('username')})
                    return response
                else:
                    return HttpResponseRedirect("retailer_login")
        elif request.session['usertype']=='r':
            request.session['number']=1
            response=render(request,"ksheer/retailer/retailer_dash.html",{"name":request.session['userid']})
            return response
        else:
            request.session['number']=1
            return render(request,"ksheer/index.html")
    
    def ret_add_warehouse(request):
        if request.method=='POST':
            form=warehouseform(request.POST)
            if form.is_valid():
                form2=form.cleaned_data
                try:
                    cu=db.cursor()
                    cu.execute(f"insert into warehouse(street,city,pincode,capacity) values('{form2['street']}','{form2['city']}',{form2['pincode']},{form2['capacity']})")
                    cu.execute(f"select warehouse_id from warehouse where street='{form2['street']}' and city='{form2['city']}' and pincode={form2['pincode']} and capacity={form2['capacity']}")
                    wareid=cu.fetchone()[0]
                    cu=db.cursor()
                    cu.execute(f"insert into retailer_warehouse values({request.session['storeid']},{wareid})")
                    db.commit()
                    return HttpResponseRedirect("ret_add_warehouse")
                except Exception as e:
                    print(e)
                    return render(request,"ksheer/retailer/add_warehouse.html",context={"form":form,"error":e})
            else:
                return render(request,"ksheer/retailer/add_warehouse.html",context={"form":form})
        else:
            return render(request,"ksheer/retailer/add_warehouse.html",context={'form':warehouseform()})
        
    def ret_inventory(request):
        cu=db.cursor()
        cu.execute(f"select * from batch natural join(select batch_id from warehouse_batch natural join (SELECT warehouse_id from retailer_warehouse where store_id=28) t1) t2;")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False)
        return render(request,"ksheer/retailer/ret_inventory.html",context={"dataframe":df})
    
    def make_bill_clickable(url):
        return '<a href="#" class="add">Add</a>'
    
    def cust_details(request):
        if request.method=="POST":
            form=billform(request.POST)
            
            if form.is_valid():
                form=form.cleaned_data
                cu=db.cursor()
                cu.execute(f"select customer_id from customer where phone={form['phone']}")
                cu=cu.fetchone()
                if cu==None:
                    print("yes")
                    cu=db.cursor()
                    cu.execute(f"insert into customer(name,age,gender,phone) values('{form['name']}',{form['age']},'{form['gender']}',{form['phone']})")
                    db.commit()
                    cu.execute(f"select customer_id from customer where phone={form['phone']}")
                    cu=cu.fetchone()  
                request.session['custid']=cu[0]
                return HttpResponseRedirect('add_bill')
            else:
                return render(request,"ksheer/retailer/cust_details.html",context={"form":form})
        if request.headers.get('x-requested-with') == 'XMLHttpRequest':
            phone=dict(request.GET)['phone']
            cu=db.cursor()
            cu.execute(f"select * from customer where phone={int(phone[0])}")
            cu=cu.fetchone()
            print(cu)
            if cu==None:
                return HttpResponse("no")
            else:
                return HttpResponse(json.dumps({'name':cu[1],'age':cu[2],'gender':cu[3]}))
        return render(request,"ksheer/retailer/cust_details.html",context={"form":billform()})

    def add_bill(request):
        if request.method=="POST":
            queryDict=dict(request.POST)
            print(request.session['custid'])
            print(request.session['storeid'])
            print(queryDict)
            cu=db.cursor()
            a=queryDict.keys()
            # s="lock table bill write,bill_product write"
            # cu.execute(s)
            s="begin"
            cu.execute(s)
            s='select * from bill'
            cu.execute(s)
            bill=cu.fetchall()
            bill_id=bill[-1][0]+1;
            s=f"insert into bill(bill_id,customer_id,store_id,date) values({bill_id},{request.session['custid']},{request.session['storeid']},'{datetime.date.today()}')"
            print(s)
            cu.execute(s)
            for i in a:
                if i!='csrfmiddlewaretoken':
                    try:
                        if(queryDict[i][0]==''):
                            continue
                        s=f"insert into bill_product(bill_id,product_id,quantity) values({bill_id},'{i}',{queryDict[i][0]})"
                        print(s)
                        cu.execute(s)
                    except Exception as e:
                        print(e)
                        s="rollback"
                        cu.execute(s)
                        break;
            # s="unlock tables"
            # cu.execute(s)
            db.commit()




        
        cu=db.cursor()
        cu.execute(f"SELECT * from product")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df['link'] = df.apply(lambda x: retailer.make_bill_clickable(x['product_id']), axis=1)
        df['link2'] = df.apply(lambda x: retailer.make_order_clickable2(x['product_id']), axis=1)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/retailer/add_bill1.html",context={'dataframe1':df})    
    
    def ret_bills(request):
        if "userid" in request.session and "usertype" in request.session and request.session['usertype']=="r":
            cu=db.cursor()
            cu.execute("select bill.*,bill_product.product_id,bill_product.quantity from bill left join bill_product on bill.bill_id=bill_product.bill_id where store_id={} order by bill_id".format(request.session['storeid']))
            cu=cu.fetchall()
            d={}
            for i in cu:
                if i[0] in d:
                    d[i[0]][1].append([i[5],i[6]])
                else:
                    d[i[0]]=[[i[1],i[2],i[3],i[4]],[]]
                    d[i[0]][1].append([i[5],i[6]])

            l=[]
            for i in d:
                x={'billid':i,'custid':d[i][0][0],'date':d[i][0][2],'total':d[i][0][3],'items':d[i][1],"link":'<a href="view_bills?billid={}">view more</a>'.format(i)}
                l.append(x)
            return render(request,"ksheer/retailer/ret_bills.html",{'data':l})
        else:
            return HttpResponseRedirect("index")

    def view_bills(request):
        cu=db.cursor()
        cu.execute("select bill.*,bill_product.product_id,bill_product.quantity from bill left join bill_product on bill.bill_id=bill_product.bill_id where bill.bill_id={}".format(request.GET['billid']))
        bills=cu.fetchall()
        bill_id=bills[0][0]
        cust_id=bills[0][1]
        store_id=bills[0][2]
        date=bills[0][3]
        total=bills[0][4]
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(bills, columns=columns)
        df.drop(df.columns[[0, 1, 2,3,4]], axis=1, inplace=True)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False)
        return render(request,"ksheer/retailer/view_bills.html",context={"dataframe":df,"billid":bill_id,"custid":cust_id,"storeid":store_id,"date":date,"total":total})
    
    def make_order_clickable(url):
        return '<a href="#" class="edit">Edit</a>'
    
    def make_order_clickable2(url):
        return '<input type="number" style="width:50px" disabled>'
    
    def ret_order(request):
        if request.method=="POST":
            print(request.session['storeid'])
            queryDict=dict(request.POST)
            print(queryDict)
            cu=db.cursor()
            store_id=request.session['storeid']
            a=queryDict.keys()
            s="lock table retailer_warehouse write,warehouse_batch write,batch write,warehouse read"
            cu.execute(s)

            for i in a:
                product_id=i;
                if(queryDict[i][0]==''):
                    continue
                s="begin"
                cu.execute(s)
                quantity=int(queryDict[i][0])
                s=f'select * from retailer_warehouse where store_id={store_id}'
                print(s);
                cu.execute(s)
                warehouses=cu.fetchall()
                flag=False
                for i in warehouses:
                    warehouse_id=i[1]
                    s=f'''select distinct * from 
                    (select * from batch where product_id='{product_id}') as t1
                    inner join
                    (select * from batch where batch_id in (
                    select batch_id from warehouse_batch wb,(
                    select warehouse_id from warehouse where warehouse_id not in (select warehouse_id from
                    retailer_warehouse)) a where wb.warehouse_id=a.warehouse_id)) t2
                    on t1.batch_id=t2.batch_id'''
                    print(s)
                    cu.execute(s)
                    batches=cu.fetchall()
                    batch_flag=False
                    for i in batches:
                        quantity1=i[2]
                        print(quantity,type(quantity))
                        print(quantity1,type(quantity1))
                        if(quantity1>=quantity):
                            batch_flag=True
                            if(quantity1==quantity):
                                s=f'delete from warehouse_batch where batch_id={i[0]}'
                                print(s)
                                cu.execute(s)
                                s=f'delete from batch where batch_id={i[0]}'
                                print(s)
                                cu.execute(s)
                            else:
                                s=f'update batch set quantity={quantity1-quantity} where batch_id={i[0]}'
                                print(s)
                                cu.execute(s)
                            s=f'select * from batch';
                            cu.execute(s)
                            batch=cu.fetchall()
                            batch_id=batch[-1][0]+1;
                            s=f'insert into batch(batch_id,product_id,quantity,production_date,expiry_date) values({batch_id},"{i[1]}",{quantity},"{i[3]}","{i[4]}")'
                            print(s)
                            cu.execute(s)
                            try:
                                s=f'insert into warehouse_batch values({warehouse_id},{batch_id})'
                                print(s)
                                cu.execute(s)
                                flag=True
                                break
                            except Exception as e:
                                print(e)
                                s='rollback'
                                cu.execute(s)
                
                    if(flag==False):
                        s='rollback'
                        print(s)
                        cu.execute(s)
                        if(batch_flag==False):
                            print("not enough stock")
                        else:
                            print("not enough warehouse",warehouse_id)
                    else:
                        s='commit'
                        print(s)
                        cu.execute(s)
                        break
            
            s="unlock tables"
            cu.execute(s)
            db.commit()


        cu=db.cursor()
        cu.execute(f"SELECT * from product")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df['link'] = df.apply(lambda x: retailer.make_order_clickable(x['product_id']), axis=1)
        df['link2'] = df.apply(lambda x: retailer.make_order_clickable2(x['product_id']), axis=1)
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/retailer/ret_order.html",context={'dataframe1':df})
                          


class collective:
    def collective(request):
        return render(request,"ksheer/collective/collective.html")
    
    def collective_dash(request):
        if request.method=="POST":
                cu=db.cursor()
                cu.execute("select * from collective where username='{}' and passwd='{}'".format(request.POST.get('username'),request.POST.get('pass')))
                print(request.POST.get('username'),request.POST.get('pass'))
                cu=cu.fetchone()
                print(cu)
                if cu!=None:  
                    request.session["userid"]=request.POST.get('username')
                    request.session['collective']=cu[0]
                    request.session['usertype']="c"
                    response=render(request,"ksheer/collective/collective_dash.html",{"name":request.POST.get('username')})
                    return response
                else:
                    return HttpResponseRedirect("collective")
        elif request.session['usertype']=='c':
            response=render(request,"ksheer/collective/collective_dash.html",{"name":request.session['userid']})
            return response
        else:
            return render(request,"ksheer/index.html")
    
    def make_edit_clickable(url):
        return '<a href="#" class="edit">Edit</a>'
    
    def collective_edit(request):
        if request.method=="POST":
            data=request.POST.getlist('list[]')
            print(data)
            cu=db.cursor()
            cu.execute(f"update collective set street='{data[1]}',city='{data[2]}',pincode={data[3]},name='{data[4]}',username='{data[5]}',passwd='{data[6]}',no_of_members={data[7]} where collective_id={data[0]}")
            db.commit()
        cu=db.cursor()
        cu.execute(f"SELECT * from collective where collective_id={request.session['collective']}")
        batches=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(batches, columns=columns)
        df.drop(df.columns[[8]], axis=1, inplace=True)
        df['link'] = df.apply(lambda x: collective.make_edit_clickable(x['collective_id']), axis=1)
        df.style
        df=df.to_html(classes=['table'],table_id="myTable",index=False,render_links=True,escape=False)
        return render(request,"ksheer/collective/collective_edit.html",context={'dataframe1':df})
    

def index(request):
    try:
        del request.session['usertype']
        del request.session['userid']
    except:
        pass
    response=render(request,"ksheer/index.html")
    return response







