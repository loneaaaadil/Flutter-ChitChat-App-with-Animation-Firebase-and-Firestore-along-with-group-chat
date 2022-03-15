import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:chit_chat/screens/login_screen.dart';
import 'package:chit_chat/screens/registration_screen.dart';

import '../components/rounded_material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'Welcome_Screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController ?controller;
  Animation ?animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
        animation=ColorTween(begin: Colors.blueGrey,end: Colors.white).animate(controller!);

    controller!.forward();
    controller!.addListener(() {
      setState(() {});
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  speed: Duration(microseconds: 100000),
                  text: ['Flash  Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
           
            MyMaterialButton(string:  'Log In',onPress: (){Navigator.pushNamed(context, LoginScreen.id);},color: Colors.lightBlueAccent,),
            MyMaterialButton(string:  'Register',onPress: (){ Navigator.pushNamed(context, RegistrationScreen.id);},color: Colors.blueAccent),
           
                ],
        ),
      ),
    );
  }
}

