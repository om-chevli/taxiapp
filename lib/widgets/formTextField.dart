import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final bool value;
  final String label;
  final TextInputType kType;
  final TextEditingController textController;
  final Function(String) validate;

  FormTextField({
    this.value = false,
    @required this.label,
    this.kType,
    @required this.textController,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: value,
      controller: textController,
      keyboardType: kType,
      decoration: InputDecoration(
        labelText: label,
        alignLabelWithHint: true,
        labelStyle: TextStyle(fontSize: 14),
        hintStyle: TextStyle(fontSize: 20),
      ),
      validator: validate,
    );
  }
}
