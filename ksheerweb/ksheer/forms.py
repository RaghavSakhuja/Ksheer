from django import forms
from crispy_forms.helper import FormHelper
from crispy_forms.bootstrap import Field, InlineRadios, TabHolder, Tab
from crispy_forms.layout import Submit, Layout, Div, Fieldset,Button
from decimal import Decimal
from django.core.exceptions import ValidationError

class batchform(forms.Form):
    batch_id=forms.IntegerField()
    warehouse_id=forms.IntegerField()
    def __init__(self, *args, **kwargs):
        super(batchform, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.form_class = 'form-horizontal'
        self.helper.label_class = 'col-lg-3'
        self.helper.field_class = 'col-lg-4'
        self.helper.form_method='post'
        self.helper.add_input(Submit('add_batch','Add Batch',css_class='btn btn-success'))
        self.helper.add_input(Button('prod_back','Back',onClick="javascript:history.go(-1);",css_class='btn btn-light',style="width=50px;"))
    
    def clean(self):
        super(batchform,self).clean()
        data=self.cleaned_data
        if data.get('warehouse_id') >10:
            self._errors['warehouse_id'] = self.error_class([
                'Minimum 5 characters required'])
        return self.cleaned_data
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
        self.helper.label_class = 'col-lg-3'
        self.helper.field_class = 'col-lg-4'
        self.helper.form_method='post'
        self.helper.add_input(Submit('add_store','Add Product',css_class='btn btn-success'))
        self.helper.add_input(Button('prod_back','Back',onClick="javascript:history.go(-1);",css_class='btn btn-light',style="width=50px;"))
                
class billform(forms.Form):
    name = forms.CharField(max_length=200)
    age = forms.IntegerField()
    gender = forms.CharField(max_length=10)
    phone = forms.CharField(max_length=15)
    # product_id = forms.CharField(max_length=5)
    # quantity = forms.IntegerField()
    
    def __init__(self, *args, **kwargs):
        
        super(billform, self).__init__(*args)
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
        return self.cleaned_data
    
    def get_interest_fields(self):
        for field_name in self.fields:
            if field_name.startswith('product_') or field_name.startswith('quantity_'):
                yield self[field_name]