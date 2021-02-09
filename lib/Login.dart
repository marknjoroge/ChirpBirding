import 'package:chirp_birding/SignUp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'ResetPassword.dart';
import 'Login.dart';

Color background = Color(0xff242424);
Color dividerColor = Color(0xff333333);
Color signInColor = Color(0xff00a1d6);
Color facebookColor = Color(0xff4755b3);

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image(
              image: AssetImage('assets/intro.jpeg'),
              height: MediaQuery.of(context).size.height * 0.37,
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
            top: 350,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Email/Username',
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.green,
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 30,),
                  FlatButton(
                      onPressed: (){},
                      color: signInColor,
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width,
                      child: Text(
                        'SIGNIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Forgot password?',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (context) => ResetPassword()
                                )
                                );
                              }
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: (){},
                      color: facebookColor,
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/facebook-icon.png'),
                          ),
                          Text(
                            'Log in with Facebook',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
          Positioned(bottom: -5,left: 0,right:0,child: Divider(color: dividerColor,)),
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: Center(
          child: RichText(
            text: TextSpan(
                text: 'Don\'t have an account? SIGN UP',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => SignUp()
                    )
                    );
                  }
            ),
          ),
        ),
      ),
    );
  }
}
