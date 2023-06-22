import 'package:cyber_scape/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

class Logo extends StatefulWidget{
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplash(
        type: Transition.fade, 
        curve: Curves.fastLinearToSlowEaseIn,
        backgroundColor:const Color(0xffFF7C7E),
        navigator: const Login(),
        durationInSeconds: 4,
        child: Image.asset('assets/images/icon.png', width: 80, height: 80,)
      )
    );
  }
}