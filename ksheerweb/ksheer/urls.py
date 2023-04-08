from django.urls import path
from . import views

urlpatterns=[
    #executives
    path("executive",views.executive.executive,name="executive"),
    path("exec_dash",views.executive.exec_dash,name="exec_dash"),
    path("exec_inventory",views.executive.exec_inventory,name="exec_inventory"),
    path("exec_ware",views.executive.exec_dash,name="exec_ware"),
    path("exec_ret",views.executive.exec_dash,name="exec_ret"),
    path("exec_coll",views.executive.exec_dash,name="exec_coll"),
    path("exec_rep",views.executive.exec_dash,name="exec_rep"),
    path("exec_reports",views.executive.exec_reports,name="exec_reports"),
    path("add_prod",views.executive.add_prod,name="add_prod"),
    path("exec_location_profit",views.executive.exec_location_profit,name="exec_location_profit"),
    path("exec_location_capacity",views.executive.exec_location_capacity,name="exec_location_capacity"),
    path("exec_yearly_report",views.executive.exec_yearly_product_report,name="exec_yearly_report"),
    path("exec_batches",views.executive.exec_add_batch,name="exec_batches"),
    path("exec_warehouse_batch",views.executive.exec_warehouse_batch,name="exec_warehouse_batch"),
    path("exec_ret_reports",views.executive.exec_ret_reports,name="exec_ret_reports"),
    path("manage_ret",views.executive.manage_ret,name="manage_ret"),
    path("add_retailer",views.executive.add_retailer,name="add_retailer"),
    path("view_ret",views.executive.view_retailers,name="view_ret"),
    
    #retailers
    path("ret_warehouse",views.executive.add_prod,name="ret_warehouse"),
    path("retailer_login",views.retailer.retailer_login,name="retailer_login"),
    path("retail_dash",views.retailer.retail_dash,name="retail_dash"),
    path("add_bill",views.retailer.add_bill,name="add_bill"),
    path("ret_bills",views.ret_bills,name="ret_bills"),
    
    #collectives
    path("collective",views.collective,name="collective"),


    path("",views.index,name="index"),
    path("index",views.index,name="index2"),
    
    
   
    
    
    
]