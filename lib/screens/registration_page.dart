import 'package:flutter/material.dart';
import 'package:taxiapp/widgets/formFlatButton.dart';
import 'package:taxiapp/widgets/formSubmitButton.dart';
import '../models/brand_colors.dart';
import '../widgets/formTextField.dart';

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
                      FormTextField(
                        label: 'Full Name',
                        kType: TextInputType.name,
                        textController: null,
                      ),
                      FormTextField(
                        label: 'Email Adddress',
                        kType: TextInputType.emailAddress,
                        textController: null,
                      ),
                      FormTextField(
                        label: 'Phone Number',
                        kType: TextInputType.phone,
                        textController: null,
                      ),
                      FormTextField(
                        value: true,
                        label: 'Password',
                        textController: null,
                      ),
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
                          label: 'REGISTER',
                          color: BrandColors.colorGreen,
                          onPressFunction: () {},
                        ),
                      ),
                      Container(
                        child: FormFlatButton(label: 'Algrady have a Account? Login Here!', routeName: '/loginPage'),
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
