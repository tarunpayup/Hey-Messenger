import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State <SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    //current state
    super.initState();

    Timer(
      const Duration(seconds: 3),
      (){
        //Navigation -> Stack navigation
        Navigator.pushReplacementNamed(context, "/login");
      }
    );
  }
}