import 'package:flutter/material.dart';
import '../models/brand_colors.dart';
import '../widgets/formTextField.dart';
import '../widgets/formSubmitButton.dart';
import '../widgets/formFlatButton.dart';

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
                      FormTextField(
                        label: 'Email Address',
                        kType: TextInputType.emailAddress,
                        textController: null,
                      ),
                      SizedBox(height: 20),
                      FormTextField(
                        value: true,
                        label: 'Password',
                        textController: null,
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: 50,
                        width: 300,
                        child: FormSubmitButton(
                          label: 'LOGIN',
                          color: BrandColors.colorGreen,
                          onPressFunction: () {},
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child: FormFlatButton(
                          label: 'New Here? Create a Rider\'s Account',
                          routeName: '/',
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
