import 'package:flutter/material.dart';
import 'package:shoemarket/widgets/drop_down_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product'),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Add New Product',style: TextStyle(fontSize: 35,color:Colors.blue,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  label: Text('Product Name'),
                  hintText: 'Enter your Product Name'
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    label: Text('Product Description'),
                    hintText: 'Enter your Product Description'
                ),
                maxLines: 5,
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    label: Text('Image Url'),
                    hintText: 'Enter your Image Url'
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    label: Text('Product Price'),
                    hintText: 'Enter your Product Price'
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Flexible(child: DropDownBtn(items: ['cat1','cat2','cat3'], selectedItemText: 'Category', onSelected: (SelectedValue) {  },)),
                  SizedBox(height: 20,),
                  Flexible(child: DropDownBtn(items: ['brand1','brand2','brand3'], selectedItemText: 'Brand', onSelected: (SelectedValue) {  },)),
                ],
              ),
              SizedBox(height: 30,),
              Text('Offered Product ?'),
              DropDownBtn(items: ['true','false'], selectedItemText: 'Offer ?', onSelected: (SelectedValue) {  },),
              SizedBox(height: 30,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.indigoAccent,
                    foregroundColor: Colors.white
                  ),
                  onPressed: (){}, child: Text('Add product'))

            ],
          ),
        ),
      ),
    );
  }
}
