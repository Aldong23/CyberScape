import 'package:cyber_scape/dashboard.dart';
import 'package:flutter/material.dart';

class Orderstatus extends StatefulWidget {
  const Orderstatus({ Key? key }) : super(key: key);

  @override
  _OrderstatusState createState() => _OrderstatusState();
}

class _OrderstatusState extends State<Orderstatus> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffF8F8F8)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
              },
            ),
            title: const Text('My Order'),
            backgroundColor: const Color(0xffFF7C7E),
            elevation: 0,
          ),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), 
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/redmi11.jpg',
                                  fit: BoxFit.cover,
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 5,),
                                  Text('Xiaomi Redmi Note 11...', style: TextStyle(fontSize: 18),),
                                  Text('Xiaomi Official', style: TextStyle(fontSize: 14),),
                                  SizedBox(height: 10,),
                                  Text('8gb/128gb', style: TextStyle(fontSize: 14, color: Color(0xffFF7C7E)),),
                                  Text('P17,999', style: TextStyle(fontSize: 18, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),),
                                  Text('1 item/s', style: TextStyle(fontSize: 14, color: Color(0xffFF7C7E)),),
                                  SizedBox(height: 12,),
                                  Text('Waiting for the seller to confirm', style: TextStyle(fontSize: 14, color: Colors.grey),),
                                ],
                              )
                            ],
                          )
                        ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}