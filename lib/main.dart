import 'package:flutter/material.dart';
import 'package:flutter_toolbox/clones/clone_apps.dart';
import 'package:flutter_toolbox/course_london_app_brewery/course_apps.dart';
import 'package:flutter_toolbox/screens/home.dart';
import 'package:flutter_toolbox/utils/utils.dart';

import 'configs/AppColors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/utils': (context) => UtilsScreen(),
        '/course': (context) => CourseAppsScreen(),
        '/clone': (context) => CloneAppsScreen(),
        '/utils': (context) => UtilsScreen(),
      },
      color: Colors.white,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'CircularStd',
        textTheme:
            Theme.of(context).textTheme.apply(displayColor: AppColors.black),
        scaffoldBackgroundColor: AppColors.lightGrey,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
