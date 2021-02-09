import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image(
              image: AssetImage('assets/intro.jpeg'),
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
          Positioned(
            top: 120,
            right: 0,
            left: 0,
            child: Image(
              image: AssetImage('assets/intro-logo.png'),
              height: 150,
            ),
          ),
          Positioned(
            top: 240,
            right: 0,
            left: 0,
            child: Center(
              child: Text(
                'Sign in to your account',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
            ),
          ),
          Positioned(
            top: 450,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a search term'
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(

            ),
          )
        ],
      ),
    );
  }
}
