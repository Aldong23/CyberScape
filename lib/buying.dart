import 'package:cyber_scape/cart.dart';
import 'package:cyber_scape/orderstatus.dart';
import 'package:flutter/material.dart';

class Buying extends StatefulWidget {
  const Buying({ Key? key }) : super(key: key);

  @override
  _BuyingState createState() => _BuyingState();
}

class _BuyingState extends State<Buying> {
  String _selectedValue1 = 'Cash on Delivery';
  String _selectedValue2 = '123 Don Benito, Poz Pang';

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
            title: const Text('Buying'),
            backgroundColor: const Color(0xffFF7C7E),
            elevation: 0,
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
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
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(height: 5,),
                                  Text('Xiaomi Redmi Note 11 Pro 5G', style: TextStyle(fontSize: 15),),
                                  Text('12gb/256gb', style: TextStyle(fontSize: 13, color: Color(0xffFF7C7E)),),
                                  Text('1 item/s', style: TextStyle(fontSize: 13, color: Color(0xffFF7C7E)),),
                                ],
                              ),
                              const Text('P17,999', style: TextStyle(fontSize: 18, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 5,),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart())); },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: const Color(0xffFF7C7E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '+Add Queue',
                                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5,),
                        const Text('Other Information', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 20,),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffFF7C7E),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedValue1,
                              items: <String>['Cash on Delivery', 'Gcash', 'Bank'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(child: Text(value)),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedValue1 = newValue ?? _selectedValue1;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffFF7C7E),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedValue2,
                              items: <String>['123 Don Benito, Poz Pang', '150 Malokiat, Poz Pang', '213 streer, Gen trias Cavity'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(child: Text(value)),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedValue2 = newValue ?? _selectedValue2;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffFF7C7E),
                    width: 2.0,
                  ),
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('1 item/s', style: TextStyle(fontSize: 15, color: Color(0xffFF7C7E)),),
                    const SizedBox(width: 10,),
                    const Text('P17,999', style: TextStyle(fontSize: 20, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),),
                    const SizedBox(width: 50,),
                    SizedBox(
                      width: 150,
                      height: 100,
                      // height: double.infinity,
                      child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Orderstatus()));},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xffFF7C7E),
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Buy now',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  ],
                )
              ),
            ],
          ),
      ),
    );
  }
}