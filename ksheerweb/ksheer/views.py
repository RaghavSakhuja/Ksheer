from django.shortcuts import render,HttpResponse,HttpResponseRedirect
from django.urls import reverse
from django import forms
from crispy_forms.helper import FormHelper
from crispy_forms.bootstrap import Field, InlineRadios, TabHolder, Tab
from crispy_forms.layout import Submit, Layout, Div, Fieldset,Button
import mysql.connector
from decimal import Decimal

db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="ksheer"
)

class prodform(forms.Form):
    product_id = forms.CharField(max_length=5)
    name = forms.CharField(max_length=200)
    fat_percent = forms.DecimalField(min_value=Decimal('0.0'),max_digits=3)
    protein_percent = forms.IntegerField(min_value=0)
    calories = forms.IntegerField(min_value=0)
    cost = forms.IntegerField(min_value=0)  # Field name made lowercase.
    mrp = forms.IntegerField(min_value=0)
    def __init__(self, *args, **kwargs):
        super(prodform, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.form_class = 'form-horizontal'
        self.helper.label_class = 'col-lg-3'
        self.helper.field_class = 'col-lg-4'
        self.helper.form_method='post'
        self.helper.add_input(Submit('add_prod','Add Product',css_class='btn btn-success'))
        self.helper.add_input(Button('prod_back','Back',onClick="javascript:history.go(-1);",css_class='btn btn-light',style="width=50px;"))

d={}
# Create your views here.
def add_prod(request):
    if request.method=="POST":
        print("w")
        form=prodform(request.POST)
        if form.is_valid():
            form=form.cleaned_data
            cu=db.cursor()
            cu.execute("insert into product(product_id,name,fat_percent,protein_percent,calories,Cost,mrp) values('{}','{}',{},{},{},{},{})".format(form['product_id'],form['name'],form['fat_percent'],form['protein_percent'],form['calories'],form['cost'],form['mrp']))
            db.commit()
            print("yes")
        else:
            print("error")
        return HttpResponseRedirect("add_prod")
    else:
        print("no")
        return render(request,"ksheer/add_prod.html",{
            "form":prodform()
        })

def exec_inventory(request):
    print(request.session['userid'])
    # return HttpResponse("success")
    
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

def add_bill(request):
    pass

def ret_bills(request):
    print(request.session["userid"])
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
            x={'billid':d[i][0][0],'custid':d[i][0][1],'date':d[i][0][2],'total':d[i][0][3],'items':d[i][1]}
            l.append(x)
        return render(request,"ksheer/ret_bills.html",{'data':l})
    else:
        return HttpResponseRedirect("index")

def retail_dash(request):
    if request.method=="POST":
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
    else:
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


