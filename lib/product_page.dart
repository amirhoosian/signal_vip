import 'package:flutter/material.dart';
import 'package:signal_vip/custom_widget/post_widget.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                getPost(imageName: 'a.png', title: 'safemone1'),
                getPost(imageName: 'c.png', title: 'safemone2'),
                getPost(imageName: 'r.png', title: 'safemone3'),
                getPost(imageName: 's.png', title: 'safemone4'),
                SizedBox(height: 20.0),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child:
                        Text('خروج از حساب', style: TextStyle(fontSize: 15.0)))
              ],
            ),
          ),
        ));
  }
}
