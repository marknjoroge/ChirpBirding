import 'package:flutter/material.dart';

import 'SignUp.dart';
import 'Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chirp Birding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  AnimationController _controller;


  @override
  void initState() {
    super.initState();
    startTime();
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SignUp()
    )
    );
  }

  startTime() async {
    // var duration = new Duration(seconds: 3);
    // return new Timer(duration, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Image(
              image: AssetImage(
                'assets/intro.jpeg',
              ),
              fit: BoxFit.fitHeight,
            )
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: 0,
            right: 0,
            child: Center(
              child: Image(
                image: AssetImage('assets/intro-logo.png'),
                height: 150,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.7,
            left: 0,
            right: 0,
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 1,
              ),
            )
          ),
          Positioned(
            bottom: 30,
            child: IconButton(
              icon: Icon(Icons.next_plan),
              onPressed: route,
            )
          ),
        ],
      ),
    );
  }
}