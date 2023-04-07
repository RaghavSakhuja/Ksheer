from django.urls import path
from . import views

urlpatterns=[
    path("",views.index,name="index"),
    path("index",views.index,name="index2"),
    path("executive",views.executive,name="executive"),
    path("retailer",views.retailer_login,name="retailer_login"),
    path("collective",views.collective,name="collective"),
    path("exec_dash",views.exec_dash,name="exec_dash"),
    path("retail_dash",views.retail_dash,name="retail_dash"),
    path("exec_inventory",views.exec_inventory,name="exec_inventory"),
    path("exec_ware",views.exec_dash,name="exec_ware"),
    path("exec_ret",views.exec_dash,name="exec_ret"),
    path("exec_coll",views.exec_dash,name="exec_coll"),
    path("exec_rep",views.exec_dash,name="exec_rep"),
    path("add_bill",views.add_bill,name="add_bill"),
    path("ret_bills",views.ret_bills,name="ret_bills"),
    path("add_prod",views.add_prod,name="add_prod"),
    path("ret_warehouse",views.add_prod,name="ret_warehouse"),
    path("exec_reports",views.exec_reports,name="exec_reports"),
    path("exec_location_profit",views.exec_location_profit,name="exec_location_profit"),
    path("exec_location_capacity",views.exec_location_capacity,name="exec_location_capacity"),
    path("exec_yearly_report",views.exec_yearly_product_report,name="exec_yearly_report"),
    path("exec_batches",views.exec_add_batch,name="exec_batches"),
    path("exec_warehouse_batch",views.exec_warehouse_batch,name="exec_warehouse_batch"),
    path("exec_ret_reports",views.exec_ret_reports,name="exec_ret_reports"),
    path("manage_ret",views.manage_ret,name="manage_ret"),
    path("add_retailer",views.add_retailer,name="add_retailer"),
    path("view_ret",views.view_retailers,name="view_ret")
]