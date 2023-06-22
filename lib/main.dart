import 'package:cyber_scape/buying.dart';
import 'package:cyber_scape/cart.dart';
import 'package:cyber_scape/dashboard.dart';
import 'package:cyber_scape/login.dart';
import 'package:cyber_scape/logo.dart';
import 'package:cyber_scape/mobilecontent.dart';
import 'package:cyber_scape/orderstatus.dart';
import 'package:cyber_scape/profile.dart';
import 'package:cyber_scape/search.dart';
import 'package:cyber_scape/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffFF7C7E)),
        initialRoute: '/logo',
        routes: {
          '/logo': (context) => const Logo(),
          '/login': (context) => const Login(),
          '/signup': (context) => const Signup(),
          '/dashboard': (context) => const Dashboard(),
          '/search': (context) => const Search(),
          '/mobilecontent': (context) => const Mobilecontent(),
          '/cart': (context) => const Cart(),
          '/buying': (context) => const Buying(),
          '/profile': (context) => const Profile(),
          '/orderstatus': (context) => const Orderstatus(),
        }
    );
  }
}


