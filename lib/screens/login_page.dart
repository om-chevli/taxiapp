import 'package:flutter/material.dart';
import 'package:taxiapp/screens/registration_page.dart';

import '../models/brand_colors.dart';

class LoginPage extends StatelessWidget {
  static const String id = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 90),
                Image(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  image: AssetImage('assets/images/logo.png'),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Sign In as Rider',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Brand-Bold',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: 50,
                        width: 300,
                        child: RaisedButton(
                          onPressed: () {},
                          onLongPress: () {
                            return false;
                          },
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'Brand-Bold'),
                          ),
                          color: BrandColors.colorGreen,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/', (route) => false);
                          },
                          onLongPress: () {
                            return false;
                          },
                          child: Text(
                            "New Here? Create a Rider's account.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
