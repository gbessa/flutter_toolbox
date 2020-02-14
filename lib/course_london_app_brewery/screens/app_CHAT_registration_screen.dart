import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_basic_buttom.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_email_text_field.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_password_text_field.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_CHAT_chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('assets/images/app_chat_logo.png'),
              ),
            ),
            Center(
              child: TypewriterAnimatedTextKit(
                text: ['Do register'],
                speed: Duration(milliseconds: 300),
                isRepeatingAnimation: false,
                textStyle: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ChatEmailTextField(
              hintText: 'Enter your email',
              onChanged: (value) {
                email = value;
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            ChatPasswordTextField(
              hintText: 'Enter your password',
              onChanged: (value) {
                password = value;
              },
            ),
            SizedBox(
              height: 24.0,
            ),
            ChatBasicButton(
              title: 'Register',
              color: Colors.blueAccent,
              onPressed: () async {
                print(email);
                print(password);
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (newUser != null) {
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
