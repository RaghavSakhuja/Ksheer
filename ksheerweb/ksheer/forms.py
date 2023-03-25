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
        
class billform(forms.Form):
    name = forms.CharField(max_length=200)
    age = forms.IntegerField()
    gender = forms.CharField(max_length=10)
    phone = forms.CharField(max_length=15)
    product_id = forms.CharField(max_length=5)
    quantity = forms.IntegerField()
    
    def __init__(self, *args, **kwargs):
        
        super(billform, self).__init__(*args)
        self.products=kwargs.get('product')
        self.helper = FormHelper()
        self.helper.form_class = 'form-horizontal'
        self.helper.label_class = 'col-lg-3'
        self.helper.field_class = 'col-lg-4'
        self.helper.form_method='post'
        self.helper.add_input(Submit('add_prod','Add Bill',css_class='btn btn-success'))
        self.helper.add_input(Button('prod_back','Back',onClick="javascript:history.go(-1);",css_class='btn btn-light'))
        self.helper.add_input(Button('add_prodfield','Add Product',onClick="javascript:history.go(-1);",css_class='btn btn-light'))

    
    def clean_product_id(self):
        # raise forms.ValidationError("error")
        data=self.cleaned_data.get('product_id')
        if data not in self.products:
            raise forms.ValidationError("incorrect")
        return data