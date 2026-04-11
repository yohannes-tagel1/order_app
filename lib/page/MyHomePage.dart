import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'Add_prodact.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.indigoAccent[100],
        centerTitle: true,
        title: Text("Page of Admin",style: TextStyle(fontSize: 20),),
      ),
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (context, index) {
        return  ListTile(title: Text("Title"),
        subtitle: Text("Price:100"),
        trailing: IconButton(onPressed: (){}, icon:Icon(Icons.delete))
       );

          },),
      floatingActionButton: FloatingActionButton(

          onPressed: () {
            Get.to(AddProdact());
          },
        child: Icon(Icons.add),
      ),


    );
  }
}
