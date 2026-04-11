import 'package:flutter/material.dart';
class AddProdact extends StatelessWidget {
  const AddProdact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.grey,
      centerTitle: true,
      title: Text('Add Prodact',style: TextStyle(fontSize: 24,color: Colors.white),),
    ),
    );
  }
}
