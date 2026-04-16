// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../wedget/drop_dow.dart';
class AddProdact extends StatelessWidget {
  const AddProdact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white70,
      centerTitle: true,
      title: Text('Add Prodact',style: TextStyle(fontSize: 24,color: Colors.black87),),
    ),
      body: SingleChildScrollView(

        child: SizedBox(
          width: double.maxFinite,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Text("Add New Product",style: TextStyle(fontWeight:FontWeight(600),fontSize: 20,color: Colors.blueAccent),),
                TextField(
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Prodact Name"),
                    hintText: "Enter your prodact"
                  ),
            
                  ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text("Prodact Discription"),
                      hintText: "Enter your Discription"
                  ),
                  maxLines: 4,

                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text("Image Url"),
                      hintText: "Enter your Image Url"
                  ),

                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text("Prodact Price"),
                      hintText: "Enter your Price"
                  ),

                ),
                SizedBox(height: 10,),
                Row(

                  children: [
                    Flexible(child: DropDown(items: ['Cat1', 'Cat2', 'Cat3'], SelectItemText: 'Catagory',
                      onSelected: (selectedvalue) {
                      print(selectedvalue);
                      },)),


                    Flexible(child: DropDown(items: ['Brand1','Brand2','Brand3'], SelectItemText: 'Brand', onSelected: (selectedvalue) {
                      print(selectedvalue);
                    },)),

                  ],
                ),

                SizedBox(height: 10,),
                Text('Dffer Product'),
                DropDown(items: ['true','false'], SelectItemText: 'Offer?', onSelected: (selectedvalue) {
                  print(selectedvalue);
                },),
                SizedBox(height: 10,),
               ElevatedButton(

                   onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue

                ),
                   child: Text("Add Prodact",style: TextStyle(fontSize: 20,color: Colors.white,height:0.3)),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
