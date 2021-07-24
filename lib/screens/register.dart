import 'package:flutter/material.dart';
import 'package:food_delivery/shared/widgets/my_text_field.dart';
import 'package:food_delivery/shared/widgets/primary_button.dart';

class Register extends StatelessWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  MyTextField(hintText: 'Username', icon: Icons.person_outline),
                  MyTextField(hintText: 'Password', icon: Icons.lock_outline),
                  MyTextField(hintText: 'Confirm Password', icon: Icons.person_outline),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryButton(name: 'Sign up', color: Colors.green),
                  PrimaryButton(name: 'Cancel', color: Colors.red),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'You\'re already a member?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    letterSpacing: 1
                  ),
                ),
                Text(
                  'Sign in now!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    letterSpacing: 1
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}