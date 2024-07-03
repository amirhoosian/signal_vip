import 'package:flutter/material.dart';
import 'package:signal_vip/Forgot_password_page.dart';
import 'package:signal_vip/product_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void navugatorPage(BuildContext context, Widget page) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "خوش امدید",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10.0),
                  Icon(Icons.login)
                ],
              ),
              Image(image: AssetImage('images/welcome.png')),
              OutlinedButton(
                onPressed: () {
                  navugatorPage(context, ShowProduct());
                },
                child: Text(
                  "ورود به حساب",
                  style: TextStyle(color: Colors.white, fontSize: 17.0),
                ),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(200.0, 40),
                  side: BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ثبت نام',
                  style: TextStyle(
                      fontSize: 17.9,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(200.0, 40),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        navugatorPage(context, ForgotPassword());
                      },
                      child: Text(
                        "تغیر رمز",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                        textDirection: TextDirection.rtl,
                      )),
                  Text(
                    'رمز رو فراموش کردی؟',
                    style: TextStyle(fontSize: 17.0),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
