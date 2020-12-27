import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final bool value;
  final String label;
  final TextInputType kType;
  final TextEditingController textController;

  FormTextField({
    this.value=false,
    @required this.label,
    this.kType,
    @required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: value,
      controller: textController,
      keyboardType: kType,
      decoration: InputDecoration(
        labelText: label,
        alignLabelWithHint: true,
        labelStyle: TextStyle(
          fontSize: 14,
        ),
        hintStyle: TextStyle(
          fontSize: 20,
        ),
      ),
      style: TextStyle(
        fontSize: 14,
      ),
    );
  }
}
