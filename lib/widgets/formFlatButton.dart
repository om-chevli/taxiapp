import 'package:flutter/material.dart';

class FormFlatButton extends StatelessWidget {
  final String routeName;
  final String label;

  FormFlatButton({
    @required this.label,
    @required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false);
      },
      onLongPress: () {
        return false;
      },
      child: Text(
        label,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
