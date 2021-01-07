import 'package:flutter/material.dart';
import '../models/brand_colors.dart';
import '../widgets/formFlatButton.dart';
import '../widgets/formSubmitButton.dart';
import '../widgets/formTextField.dart';


class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _form = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final createPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    createPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _saveForm() {
    final isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 35),
                  child: Form(
                    key: _form,
                    child: Column(
                      children: <Widget>[
                        FormTextField(
                          label: 'Full Name',
                          kType: TextInputType.name,
                          textController: nameController,
                          validate: (text) {
                            if (text.isEmpty) {
                              return 'Please Enter your Full Name!';
                            } else if (!(text.length > 5) && text.isNotEmpty) {
                              return "Enter valid name of more then 5 characters!";
                            }
                            return null;
                          },
                        ),
                        FormTextField(
                          label: 'Email Adddress',
                          kType: TextInputType.emailAddress,
                          textController: emailController,
                          validate: (text) {
                            if (text.isEmpty) {
                              return 'Please Enter your Email!';
                            } else if (!(text.contains('@')) && text.isNotEmpty) {
                              return "Enter a valid email address!";
                            }
                            return null;
                          },
                        ),
                        FormTextField(
                          label: 'Phone Number',
                          kType: TextInputType.phone,
                          textController: phoneController,
                          validate: (text) {
                            if (text.isEmpty) {
                              return 'Please Enter your Number!';
                            } else if (!(text.length == 10) && text.isNotEmpty) {
                              return "Phone number should be of 10 digits!";
                            }
                            return null;
                          },
                        ),
                        FormTextField(
                          value: true,
                          label: 'Create Password',
                          textController: createPasswordController,
                          validate: (text) {
                            if (text.isEmpty) {
                              return 'Please Create a password!';
                            } else if ((text.length < 8) && text.isNotEmpty) {
                              return "Password should be of 8 digits!";
                            }
                            return null;
                          },
                        ),
                        FormTextField(
                          value: true,
                          label: 'Confirm Password',
                          textController: confirmPasswordController,
                          validate: (text) {
                            if (text.isEmpty) {
                              return 'Please confirm your password!';
                            } else if (text != createPasswordController.text &&
                                text.isNotEmpty) {
                              return "Password didn't matched!";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 40),
                        Container(
                          height: 50,
                          width: 300,
                          child: FormSubmitButton(
                            label: 'REGISTER',
                            color: BrandColors.colorGreen,
                            onPressFunction: () {
                              _saveForm();
                            },
                          ),
                        ),
                        Container(
                          child: FormFlatButton(
                              label: 'Algrady have a Account? Login Here!',
                              routeName: '/loginPage'),
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                      ],
                    ),
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
