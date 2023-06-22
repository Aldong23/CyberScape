import 'package:cyber_scape/dashboard.dart';
import 'package:cyber_scape/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFF7C7E),
                  Color(0xffDFE0E4),
                ],
              )
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top:80.0, bottom: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                Image.asset('assets/images/icon.png', height: 80, width: 80,),

                const Text('CyberScape',
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(width: 20, height: 5,),

                const Text('Everything you need is here',
                  style: TextStyle(fontSize: 15, color: Colors.white,
                  ),
                ),

                const SizedBox(width: 20, height: 50,),

                Padding(padding: const EdgeInsets.only(right: 30, left: 30),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top:40.0, bottom: 20.0, left: 30, right: 30),
                  child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        prefixIcon: const Icon(Icons.app_registration_rounded, color: Color(0xffFF7C7E),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xffFF7C7E),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20, height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Address',
                        prefixIcon: const Icon(Icons.location_on, color: Color(0xffFF7C7E),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xffFF7C7E),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20, height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Birthday',
                        prefixIcon: const Icon(Icons.calendar_today, color: Color(0xffFF7C7E),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xffFF7C7E),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20, height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        prefixIcon: const Icon(Icons.account_circle, color: Color(0xffFF7C7E),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xffFF7C7E),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20, height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: const Icon(Icons.person, color: Color(0xffFF7C7E),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xffFF7C7E),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20, height: 20,),                    
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: const Icon(Icons.mail, color: Color(0xffFF7C7E),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xffFF7C7E),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20, height: 20,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock, color: Color(0xffFF7C7E),),
                        suffixIcon: const Icon(Icons.remove_red_eye, color: Color(0xffFF7C7E),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xffFF7C7E),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20, height: 20,),
                      SizedBox(
                    width: double.infinity,
                    height: 50,
                    // height: double.infinity,
                    child: ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(0xffFF7C7E),
                        shape: const StadiumBorder(),
                        textStyle: const TextStyle(fontSize: 20)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(width: 20, height: 10,),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                      foregroundColor: const Color(0xffFF7C7E)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                    },
                    child: const Text('Already have account?'),
                  ),
                  ],
                ),
                ),
                ),

                const SizedBox(height: 40,),

                const Text('Or signup with'),

                const SizedBox(height: 40,),
                
                Padding(padding: const EdgeInsets.only(right: 30, left: 30),
                    child: Container(
                    decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top:20.0, bottom: 20.0, left: 30, right: 30),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Sign in with Facebook'),
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.check_circle, color: Colors.green),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'You are signed in with Facebook.',
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                                    },
                                    child: const Text('Continue'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Image.asset('assets/icon/fbicon.png', height: 40, width: 40),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Sign in with Google'),
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.check_circle, color: Colors.green),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'You are signed in with Google.',
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                                    },
                                    child: const Text('Continue'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Image.asset('assets/icon/googleicon.png', height: 40, width: 40),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Sign in with Apple'),
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.check_circle, color: Colors.green),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'You are signed in with Apple.',
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                                    },
                                    child: const Text('Continue'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Image.asset('assets/icon/appleicon.png', height: 40, width: 40),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Sign in with Twitter'),
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.check_circle, color: Colors.green),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'You are signed in with Twitter.',
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                                    },
                                    child: const Text('Continue'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Image.asset('assets/icon/tticon.png', height: 40, width: 40),
                      ),

                    ],
                  ),

                ),
                )
              ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}