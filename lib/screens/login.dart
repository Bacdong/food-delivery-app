import 'package:flutter/material.dart';
import 'package:food_delivery/shared/widgets/my_text_field.dart';
import 'package:food_delivery/shared/widgets/primary_button.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1
              )
            ),
            Column(
              children: [
                MyTextField(
                  icon: Icons.person_outline,
                  hintText: 'Username',
                ),
                MyTextField(
                  icon: Icons.lock_outline,
                  hintText: 'Password',
                ),
              ],
            ),
            PrimaryButton(name: 'Sign in', color: Colors.green),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New user?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    ' Register now!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), 
    );
  }
}