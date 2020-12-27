import 'package:flutter/material.dart';

class FormSubmitButton extends StatelessWidget {
  final String label;
  final Color color;
  final Function onPressFunction;

  FormSubmitButton({
    @required this.label,
    @required this.color,
    @required this.onPressFunction,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressFunction,
      onLongPress: () {
        return false;
      },
      child: Text(
        label,
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'Brand-Bold',
        ),
      ),
      color: color,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
