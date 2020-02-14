import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_basic_buttom.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_email_text_field.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_password_text_field.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            SizedBox(
              height: 48.0,
            ),
            ChatEmailTextField(
              hintText: 'Enter your email',
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            ChatPasswordTextField(
              hintText: 'Enter your password',
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            ChatBasicButton(
              title: 'Log in',
              color: Colors.lightBlueAccent,
              onPressed: () {
                //Implement login functionality.
              },
            ),
          ],
        ),
      ),
    );
  }
}
