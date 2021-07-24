import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String name;
  final Color color;

  PrimaryButton({ required this.name, required this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        color: color,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        onPressed: () {},
      ),
    );
  }
}