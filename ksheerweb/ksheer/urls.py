from django.urls import path
from . import views

urlpatterns=[
    path("",views.index,name="index"),
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
    path("ret_bills",views.ret_bills,name="ret_bills"),
    path("add_prod",views.add_prod,name="add_prod")
]