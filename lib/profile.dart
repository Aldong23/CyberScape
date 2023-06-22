import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            Navigator.pop(context);
          },
        ),
        title: const Text('Profile'),
        backgroundColor: const Color(0xffFF7C7E),
        elevation: 0,
      ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10,),
                ClipOval(
                  child: Image.asset(
                    'assets/images/mikuu.png', // Replace with your image path
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  height: 25,
                  color: const Color(0xffFF7C7E),
                  child: const Center(
                    child: Text('Reynaldo M. Molano', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 160,
                      child: Column(
                        children: const [
                          SizedBox(height: 10,),
                          Text('Display Name', style: TextStyle(fontSize: 15, color: Color(0xffFF7C7E)),),
                          SizedBox(height: 15,),
                          Text('JArmy', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      ),
                      const SizedBox(width: 20,),
                      Container(width: 5, height: double.infinity, color: const Color(0xffF8F8F8),),
                      const SizedBox(width: 20,),
                      SizedBox(width: 160, 
                      child: Column(
                        children: const [
                          SizedBox(height: 10,),
                          Text('Email Address', style: TextStyle(fontSize: 15, color: Color(0xffFF7C7E)),),
                          SizedBox(height: 15,),
                          Text('aldong@gmail.com', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),),
                      
                    ],
                  )
                ),
                const SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 160,
                      child: Column(
                        children: const [
                          SizedBox(height: 10,),
                          Text('Phone Number', style: TextStyle(fontSize: 15, color: Color(0xffFF7C7E)),),
                          SizedBox(height: 15,),
                          Text('09234567891', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      ),
                      const SizedBox(width: 20,),
                      Container(width: 5, height: double.infinity, color: const Color(0xffF8F8F8),),
                      const SizedBox(width: 20,),
                      SizedBox(width: 160, 
                      child: Column(
                        children: const [
                          SizedBox(height: 10,),
                          Text('Birthday', style: TextStyle(fontSize: 15, color: Color(0xffFF7C7E)),),
                          SizedBox(height: 15,),
                          Text('January 1, 2001', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),),
                    ],
                  )
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Icon(Icons.location_on, size: 30, color: Color(0xffFF7C7E),),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(height: 5,),
                          Text('Address', style: TextStyle(fontSize: 12, color: Color(0xffFF7C7E)),),
                          Text('Don Ramon Magsaysay High way', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(width: 20,),
                      const Icon(Icons.arrow_right, size: 30, color: Color(0xffFF7C7E),),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                Container(
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Icon(Icons.location_on, size: 30, color: Color(0xffFF7C7E),),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(height: 5,),
                          Text('Address', style: TextStyle(fontSize: 12, color: Color(0xffFF7C7E)),),
                          Text('Don Ramon Gonzales Street Com', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(width: 20,),
                      const Icon(Icons.arrow_right, size: 30, color: Color(0xffFF7C7E),),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          String address = '';

                          return AlertDialog(
                            title: const Text('Add Address'),
                            content: TextField(
                              onChanged: (value) {
                                address = value;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Address',
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  // Process the entered address here
                                  // You can access the `address` variable for further use
                                },
                                child: const Text('Add'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xffFF7C7E),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '+Add Address',
                        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      
    );
  }
}