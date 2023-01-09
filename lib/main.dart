// ignore_for_file: prefer_const_constructors

import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/auth/main_page.dart';
import 'package:first_app/pages/playList_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      initialRoute: '',
      routes: <String, WidgetBuilder>{
        '': (context) => HomePage(),
        '/send': (context) => SendPage(),
      },
    );
  }
}
