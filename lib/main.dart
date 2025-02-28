import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';
import 'HomePage.dart';
import 'AboutPage.dart';
import 'ArticlePage.dart';
import 'ExercisesPage.dart';
import 'IntensityPage.dart';
import 'TechniquesPage.dart';
import 'VideosPage.dart';
import 'WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prototype App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/homepage': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/article': (context) => ArticlePage(),
        '/exercises': (context) => ExercisesPage(),
        '/intensity': (context) => IntensityPage(),
        '/techniques': (context) => TechniquesPage(),
        '/videos': (context) => VideosPage(),
      },
    );
  }
}
