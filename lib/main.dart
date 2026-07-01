import 'package:flutter/material.dart';
import 'package:flutter_chat_application/screens/login_screen.dart';
import 'package:flutter_chat_application/screens/signup_screen.dart';
import 'package:flutter_chat_application/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',

      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup':(context) => const SignupScreen()

      },
    );
  }
}