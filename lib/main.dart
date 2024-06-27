import 'package:flutter/material.dart';
import 'package:login_page/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
