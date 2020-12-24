import 'package:flutter/material.dart';
import 'package:taxiapp/screens/login_page.dart';

import '../models/brand_colors.dart';

class RegistrationPage extends StatelessWidget {
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
                  "Create a Rider's Account",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Brand-Bold',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          alignLabelWithHint: true,
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(fontSize: 10),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          alignLabelWithHint: true,
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(fontSize: 10),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          alignLabelWithHint: true,
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(fontSize: 10),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          alignLabelWithHint: true,
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(fontSize: 20),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          alignLabelWithHint: true,
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(fontSize: 20),
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
                            'Register',
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
                                context, LoginPage.id, (route) => false);
                          },
                          onLongPress: () {
                            return false;
                          },
                          child: Text(
                            'Algrady have a Account? Login Here!',
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
