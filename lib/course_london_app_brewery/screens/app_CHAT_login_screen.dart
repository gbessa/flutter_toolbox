import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_basic_buttom.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_email_text_field.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/chat_password_text_field.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_CHAT_chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
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
                height: 8.0,
              ),
              ChatBasicButton(
                title: 'Log in',
                color: Colors.lightBlueAccent,
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                    email = 'gbvirtual@gmail.com';
                    password = '123456';
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                  setState(() {
                    showSpinner = false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
