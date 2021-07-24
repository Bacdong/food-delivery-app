import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color txtColor;
  final bool obscureText;

  MyTextField({ 
    required this.hintText, 
    required this.icon,
    required this.txtColor,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: txtColor,
          letterSpacing: 1,
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.white,),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          )
        ),
      ),
    );
  }
}