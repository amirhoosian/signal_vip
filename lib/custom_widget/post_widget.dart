import 'package:flutter/material.dart';

Widget getPost({required String imageName, required String title}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image(image: AssetImage('images/$imageName'))),
      ),
      SizedBox(height: 10.0),
      Text("$title", style: TextStyle(fontSize: 28.0)),
      SizedBox(height: 20.0),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '۱۳.۶:فروش روی',
          style: TextStyle(fontSize: 20.0, color: Colors.red),
        ),
        SizedBox(width: 2.0),
        Icon(
          Icons.sell,
          color: Colors.red,
        ),
        SizedBox(width: 20.0),
        Text(
          'خرید روی :۱۲.۰۶',
          style: TextStyle(color: Colors.green, fontSize: 20.0),
        ),
        SizedBox(width: 2.0),
        Icon(
          Icons.price_change,
          color: Colors.green,
        )
      ]),
      Divider(
        height: 32,
        indent: 67.0,
        endIndent: 67.0,
        thickness: 4.0,
      ),
    ],
  );
}
