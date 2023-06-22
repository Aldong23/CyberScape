import 'package:cyber_scape/cart.dart';
import 'package:cyber_scape/mobilecontent.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final List<String> mobileNames = [
      'Xiaomi Redmi Note 10 Pro',
      'Xiaomi Mi 13 pro',
      'Xiaomi Redmi Note 10C',
      'Xiaomi Mi Pad 5',
      'Xiaomi POCO F4',
      'Xiaomi 13 pro',
      'Xiaomi Redmi Note 12',
      'Xiaomi Redmi Note 12 Pro 5G',
      'Xiaomi POCO F5 Pro',
      'Xiaomi 13 Ultra',
      // Add more item names for additional items as needed
    ];
    final List<String> price = [
      'P12,000',
      'P36,390',
      'P5,999',
      'P16,639',
      'P24,000',
      'P36,790',
      'P9,999',
      'P17,999',
      'P27,999',
      'P59,999',
      // Add more item names for additional items as needed
    ];

    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffF8F8F8)),
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Align widgets horizontally at the center
            children: [
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Color(0xffFF7C7E),), // Replace with the desired icon
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 280,),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart, color: Color(0xffFF7C7E),), // Replace with the desired icon
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: TextField(
                  onSubmitted: (value) {
                    // Perform search based on the entered value
                    // You can call a search function or update search results here
                  },
                  decoration: InputDecoration(
                    hintText: 'Xiaomi',
                    prefixIcon: const Icon(Icons.search, color: Color(0xffFF7C7E),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Mobilecontent()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/list$index.jpg',
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            price[index],
                            style: const TextStyle(fontSize: 16, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),
                          ),
                          Text(
                            mobileNames[index],
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16), // Add desired spacing at the bottom
            ],
          ),
        ),

    );
  }
}