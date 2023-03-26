from django.shortcuts import render,HttpResponse,HttpResponseRedirect,redirect
from django.urls import reverse
from .forms import *
import pandas as pd
import datetime
import mysql.connector
from django.core.exceptions import *


db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="ksheer"
)
cu=db.cursor()
cu.execute("select product_id from product")
products=[i[0] for i in cu.fetchall()]

d={}
# Create your views here.
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
        return render(request,"ksheer/add_prod.html",{
            "form":prodform()
        })

def add_bill(request):
    if request.method=="POST":
        n=request.session['number']
        form=billform(request.POST,product=products,number=n)
        if form.is_valid():
            form2=form.cleaned_data
            cu=db.cursor()
            cu.execute("select customer_id from customer where phone={}".format(form2['phone']))
            cu=cu.fetchone()
            if cu==None:
                cu=db.cursor()
                cu.execute("insert into customer(name,age,gender,phone) values('{}',{},'{}',{})".format(form2['name'],form2['age'],form2['gender'],form2['phone'])) 
                db.commit()   
                cu.execute("select customer_id from customer where phone={}".format(form2['phone']))
                cu=cu.fetchone()
            custid=cu
            
            cu=db.cursor()
            today = datetime.date.today()
            formatted_date = today.strftime('%Y-%m-%d')
            query="insert into bill(customer_id,store_id,date) values({},{},'{}')".format(custid[0],request.session['storeid'],formatted_date)    
            cu.execute(query)
            db.commit()

            cu.execute("select max(bill_id) from bill")
            billid=cu.fetchone()
            cu=db.cursor()
            try:
                print(form2)
                for i in range(1,n+1):
                    print(billid[0],form2['product_%s'%i],form2['quantity_%s'%i])
                    cu.execute("insert into bill_product values({},'{}',{})".format(billid[0],form2['product_%s'%i],form2['quantity_%s'%i]))
                    db.commit()
                del request.session['number']
                return HttpResponseRedirect("retail_dash")
            except Exception as e:
                cu.execute(f"delete from bill where bill_id={billid}")
                db.commit()
                if h==1:
                    cu.execute(f"delete from customer where customer_id={custid}")
                    db.commit()
                return render(request,"ksheer/add_bill",context={'error':"insufficient quantity","form":{form}}) 
    else:
        if request.headers.get('x-requested-with') == 'XMLHttpRequest':
            h=request.GET.get('working')
            if h=="yes":
                request.session['number']=request.session['number']+1
            elif h=="no":
                request.session['number']=request.session['number']-1

        n=request.session['number']
        form=billform(product=products,number=n)  
        return render(request,"ksheer/add_bill.html",{
            "form":form,"n":n
        })

def exec_inventory(request):
    return render(request,"ksheer/exec_inventory.html")

def exec_dash(request):
    if request.method=="POST":
            cu=db.cursor()
            cu.execute("select * from executive where username='{}' and passwd='{}'".format(request.POST.get('username'),request.POST.get('pass')))
            cu=cu.fetchone()
            if cu!=None:  
                request.session["userid"]=request.POST.get('username')
                request.session["usertype"]="e"
                response=render(request,"ksheer/exec_dash.html",{"name":request.POST.get('username')})
                return response
            else:
                return HttpResponseRedirect("executive")
    else:
        return render(request,"ksheer/index.html")

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
            x={'billid':i,'custid':d[i][0][0],'date':d[i][0][2],'total':d[i][0][3],'items':d[i][1]}
            l.append(x)
        return render(request,"ksheer/ret_bills.html",{'data':l})
    else:
        return HttpResponseRedirect("index")

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
                response=render(request,"ksheer/retailer_dash.html",{"name":request.POST.get('username')})
                return response
            else:
                return HttpResponseRedirect("retailer_login")
    elif request.session['usertype']=='r':
        request.session['number']=1
        response=render(request,"ksheer/retailer_dash.html",{"name":request.session['userid']})
        return response
    else:
        request.session['number']=1
        return render(request,"ksheer/index.html")
    
                                
def index(request):
    response=render(request,"ksheer/index.html")
    response.delete_cookie('token')
    return response

def executive(request):
    return render(request,"ksheer/executive.html")

def retailer_login(request):
    return render(request,"ksheer/retailer.html")


def collective(request):
    return render(request,"ksheer/collective.html")

def exec_reports(request):
    return render(request,"ksheer/reports.html")

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
    df=df.to_html(classes=['table'],index=False)
    cu=db.cursor()    
    cu.execute("deallocate prepare stmt;")
    context = {'dataframe': df}
    return render(request, 'ksheer/exec_ret_reports.html', context)


def exec_add_batch(request):
    if request.method=="POST":
        form=batchform(request.POST)
        if form.is_valid():
            form2=form.cleaned_data
            try:
                cu=db.cursor()
                cu.execute(f"insert into warehouse_batch values({form2['warehouse_id']},{form2['batch_id']})")
                db.commit()
                print(form2['warehouse_id'],form2['batch_id'])
                return HttpResponseRedirect("exec_batches")
            except Exception as e:
                return render(request,"ksheer/exec_batches.html",context={"error":"Warehouse id doesnt exist","form":form})
    else:
        return render(request,"ksheer/exec_batches.html",context={"form":batchform()})

    

def exec_warehouse_batch(request):
        query="""select w.warehouse_id,w.pincode,b.batch_id,b.product_id,b.quantity from 
    warehouse w,warehouse_batch wb,batch b 
    where w.warehouse_id=wb.warehouse_id and b.batch_id=wb.batch_id;
    """
        cu.execute(query)
        data=cu.fetchall()
        columns = [desc[0] for desc in cu.description]
        df = pd.DataFrame(data, columns=columns)
        df=df.to_html(classes=['table'],index=False)
        return render(request,"ksheer/exec_batches_report.html",context={"dataframe":df})


def exec_location_profit(request):
    query="""select pincode,city,street,sum(profit),grouping(pincode),grouping(city),grouping(street) from retailer
group by pincode,city,street with rollup order by grouping(street),grouping(city),grouping(pincode);"""
    
    cu.execute(query)
    data=cu.fetchall()
    columns = [desc[0] for desc in cu.description]
    df = pd.DataFrame(data, columns=columns)
    df=df.to_html(classes=['table'],index=False)
    return render(request,'ksheer/exec_location_profit.html',context={"dataframe":df})


def exec_location_capacity(request):
    query="""select pincode,city,street,sum(capacity) from warehouse
    group by pincode,city,street with rollup having grouping(pincode,city,street)<>0 ;
    """
    
    cu.execute(query)
    data=cu.fetchall()
    columns = [desc[0] for desc in cu.description]
    df = pd.DataFrame(data, columns=columns)
    df=df.to_html(classes=['table'],index=False)
    return render(request,'ksheer/exec_location_capacity.html',context={"dataframe":df})

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
    cu.execute(query)
    data=cu.fetchall()
    columns = [desc[0] for desc in cu.description]
    df = pd.DataFrame(data, columns=columns)
    df=df.to_html(classes=['table'],index=False)
    return render(request,'ksheer/exec_yearly_report.html',context={"dataframe":df})
    



