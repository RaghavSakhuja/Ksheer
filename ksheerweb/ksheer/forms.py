from django import forms
from crispy_forms.helper import FormHelper
from crispy_forms.bootstrap import Field, InlineRadios, TabHolder, Tab,InlineField,FormActions
from crispy_forms.layout import Submit, Layout, Div, Fieldset,Button,Row,Column,ButtonHolder
from decimal import Decimal
from django.core.exceptions import ValidationError

class retorderform(forms.Form):    
    def __init__(self, *args, **kwargs):
        super(retorderform, self).__init__(*args)
        self.products=kwargs.get('product')
        self.helper = FormHelper()
        self.helper.form_class = 'form-horizontal'
        self.helper.label_class = 'col-lg-3'
        self.helper.field_class = 'col-lg-4'
        self.helper.form_method='post'
        self.no_of_prod=kwargs.get("number")
        for i in range(self.no_of_prod):
            self.fields['product_%s'%(i+1)] = forms.CharField(required=False)
            self.fields['quantity_%s'%(i+1)] = forms.IntegerField(required=False)
        self.helper.add_input(Submit('ret_order','Order',css_class='btn btn-success'))
        self.helper.add_input(Button('prod_back','Back',onClick="location.href='retail_dash'",css_class='btn btn-light'))
        self.helper.add_input(Button('add_prodfield','Add Product',onClick="ajaxCall1()",css_class='btn btn-light'))
        self.helper.add_input(Button('remove_prodfield','Remove Product',onClick="ajaxCall2()",css_class='btn btn-light'))

class warehouseform(forms.Form):
    street =forms.CharField(max_length=200)
    city =forms.CharField(max_length=50)
    pincode =forms.IntegerField()
    capacity =forms.IntegerField()
    def __init__(self, *args, **kwargs):
        super(warehouseform, self).__init__(*args,**kwargs)
        self.helper = FormHelper()
        self.helper.form_class = 'form-horizontal'
        self.helper.label_class = 'col-lg-4'
        self.helper.field_class = 'col-lg-7'
        self.helper.layout = Layout(
            'street',
            'city',
            'pincode',
            'capacity',
            Div(
            Submit('add_warehouse','Add Warehouse')        ))

class batchform(forms.Form):
    batch_id=forms.IntegerField()
    warehouse_id=forms.IntegerField()
    def __init__(self, *args, **kwargs):
        self.batch_id=kwargs.get('batchs')
        print("working",self.batch_id)
        super(batchform, self).__init__(*args)
        self.warehouses=kwargs.get('warehouse')
        self.initial['batch_id'] = kwargs.get('batchs')
        self.helper = FormHelper()
        self.helper.form_class = 'form-horizontal'
        self.helper.label_class = 'col-lg-4'
        self.helper.field_class = 'col-lg-7'
        self.helper.layout = Layout(
            'batch_id',
            'warehouse_id',
            Div(
            Submit('add_batch','Add Batch')        ))
    
    def clean_warehouse_id(self):
        data=self.cleaned_data.get('warehouse_id')
        if data not in self.warehouses:
            self._errors['warehouse_id'] = self.error_class([
                'invalid warehouse id'])
        return data

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
        self.helper.label_class = 'col-lg-4'
        self.helper.field_class = 'col-lg-7'
        self.helper.layout = Layout(
            'product_id',
            'name',
            'fat_percent',
            'protein_percent',
            'calories',
            'cost',
            'mrp',
            Div(
            Submit('add_prod','Add Product'))) 

class storeform(forms.Form):
    username = forms.CharField(max_length=200)
    password = forms.CharField(max_length=200)
    street=forms.CharField(max_length=200)
    city=forms.CharField(max_length=200)
    store_name=forms.CharField(max_length=200)
    pincode=forms.IntegerField(min_value=0)
    def __init__(self, *args, **kwargs):
        super(storeform, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.form_class = 'form-horizontal'
        self.helper.label_class = 'col-lg-4'
        self.helper.field_class = 'col-lg-7'
        self.helper.layout=Layout(
            'username',
            'password',
            'street',
            'city',
            'store_name',
            'pincode',
            Div(
            Submit('add_store','Add Store')        ))

class billform(forms.Form):
    name = forms.CharField(max_length=200)
    age = forms.IntegerField()
    gender = forms.CharField(max_length=10)
    phone = forms.CharField(max_length=15)
    # product_id = forms.CharField(max_length=5)
    # quantity = forms.IntegerField()
    
    def __init__(self, *args, **kwargs):
        
        super(billform, self).__init__(*args)
        try:
            self.products=kwargs.get('product')
        except:
            pass
        self.helper = FormHelper()
        self.helper.form_class = 'form-horizontal'
        self.helper.label_class = 'col-lg-3'
        self.helper.field_class = 'col-lg-4'
        self.helper.form_method='post'
        self.no_of_prod=kwargs.get("number")
        for i in range(self.no_of_prod):
            self.fields['product_%s'%(i+1)] = forms.CharField(required=False)
            self.fields['quantity_%s'%(i+1)] = forms.IntegerField(required=False)
        self.helper.add_input(Submit('add_prod','Add Bill',css_class='btn btn-success'))
        self.helper.add_input(Button('prod_back','Back',onClick="location.href='retail_dash'",css_class='btn btn-light'))
        self.helper.add_input(Button('add_prodfield','Add Product',onClick="ajaxCall1()",css_class='btn btn-light'))
        self.helper.add_input(Button('remove_prodfield','Remove Product',onClick="ajaxCall2()",css_class='btn btn-light'))

        
    def clean(self):
        super(billform,self).clean()
        
        for field_name in self.fields:
            if field_name.startswith('product_'):
                data=self.cleaned_data.get(field_name)
                if data not in self.products:
                    self._errors[field_name] = self.error_class(['invalid product'])
        if len(self.cleaned_data.get('phone'))<10:
            self._errors['phone'] = self.error_class(['invalid phone number'])

        return self.cleaned_data
    
    def get_interest_fields(self):
        for field_name in self.fields:
            if field_name.startswith('product_') or field_name.startswith('quantity_'):
                yield self[field_name]