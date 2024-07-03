import 'package:flutter/material.dart';

class ShowProduct extends StatelessWidget {
  const ShowProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('vip اخبار و سینگال های '),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hi this a product page"),
      ),
    );
  }
}
