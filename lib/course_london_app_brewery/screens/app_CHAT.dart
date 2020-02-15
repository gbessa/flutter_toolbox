import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_CHAT_chat_screen.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_CHAT_login_screen.dart';
import 'package:flutter_toolbox/course_london_app_brewery/screens/app_CHAT_registration_screen.dart';
import 'app_CHAT_welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
