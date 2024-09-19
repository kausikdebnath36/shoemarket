import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:shoemarket/pages/add_product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shop Admin'),),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,intex){
          return ListTile(title: Text('Title'),
          subtitle: Text('Price : Rs 100'),
          trailing: IconButton(icon:Icon(Icons.delete), onPressed: () { 
            print('Delete');
          },),
          );
          }),
      floatingActionButton: FloatingActionButton(onPressed: () { 
        Get.to(AddProductPage());
      },child: Icon(Icons.add),),
    );
  }
}
