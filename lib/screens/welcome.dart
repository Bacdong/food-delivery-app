import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({ Key? key }) : super(key: key);

  Widget primaryBtn({ 
    required String name, 
    required Color color, 
    required Color txtColor 
  }) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15),
      height: 60,
      width: 350,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold,
            color: txtColor,
            letterSpacing: 1,
          ),
        ),
        onPressed: () => {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Image.asset('images/logo.jpeg'),
              ),
            )
            ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Local Food', 
                    style: TextStyle(
                      fontSize: 30, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.green,
                      letterSpacing: 1,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Text('Order food from our restaurant and'),
                            Text('Make reservations in real-time'),
                          ],
                        ),
                      ),
                      primaryBtn(name: 'Sign in', color: Colors.green, txtColor: Colors.white),
                      primaryBtn(name: 'Sign up', color: Colors.white, txtColor: Colors.green),
                    ],
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}