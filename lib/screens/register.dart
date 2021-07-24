import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({ Key? key }) : super(key: key);

  Widget txtField({ required String hintText, required IconData icon }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
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

  Widget primaryBtn({ 
    required String name, 
    required Color color, 
    required Color txtColor 
  }) {
    return Container(
      width: 350,
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        color: color,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: txtColor,
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
                  txtField(hintText: 'Username', icon: Icons.person_outline),
                  txtField(hintText: 'Password', icon: Icons.lock_outline),
                  txtField(hintText: 'Confirm Password', icon: Icons.person_outline),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  primaryBtn(
                    name: 'Cancel', 
                    color: Colors.red, 
                    txtColor: Colors.white
                  ),
                  primaryBtn(
                    name: 'Sign up', 
                    color: Colors.green, 
                    txtColor: Colors.white
                  ),
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