import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

Color background = Color(0xff242424);
Color xColor = Color(0xff00a0d4);
Color bNavColor = Color(0xff2d2d2d);
Color accInfoColor = Color(0xff191919);
Color contBtn = Color(0xff00a1d6);


class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: background,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8,top: 8),
          child: RichText(
            text: TextSpan(
                text: 'x',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: xColor
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => LogIn()
                    )
                    );
                  }
            ),
          ),
        ),
        title: Text('Sign Up'),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            color: accInfoColor,
            child: Padding(
              padding: const EdgeInsets.only(left:8.0, top: 18),
              child: Text(
                'ACCOUNT INFO',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w100
                ),
              ),
            ),
          ),
          Container(
            color: bNavColor,
            height: 306,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                textField('First Name', context),
                Divider(),
                textField('Last Name', context),
                Divider(),
                textField('Username', context),
                Divider(),
                textField('Email', context),
                Divider(),
                textField('Password', context),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){},
                height: 50,
                color: contBtn,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            ),
          ),
          Row(),
      ]
      ),
      bottomNavigationBar: Container(
        height: 40,
        color: bNavColor,
        child: Center(
          child: RichText(
            text: TextSpan(
                text: 'Already a member? Sign in',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: xColor
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => LogIn()
                    )
                    );
                  }
            ),
          ),
        ),
      ),
    );
  }

  Widget textField(String label, context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$label',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width *0.7,
          child: TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'Enter $label',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w200,
                fontSize: 18,
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ],
    );
  }
}
