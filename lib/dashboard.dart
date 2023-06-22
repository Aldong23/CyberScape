import 'package:cyber_scape/cart.dart';
import 'package:cyber_scape/login.dart';
import 'package:cyber_scape/mobilecontent.dart';
import 'package:cyber_scape/orderstatus.dart';
import 'package:cyber_scape/profile.dart';
import 'package:cyber_scape/search.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
 State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
  final List<String> mobileNames = [
    'Xiaomi Redmi Note 10 Pro',
    'Xiaomi Mi 13 pro',
    'Xiaomi Redmi Note 10C',
    'Xiaomi Mi Pad 5',
    'Xiaomi POCO F4',
    'Xiaomi 13 pro',
    // Add more item names for additional items as needed
  ];
    
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffF8F8F8)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    PopupMenuButton<String>(
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'Profile',
                          child: Text('Profile'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'My Orders',
                          child: Text('My Orders'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Settings',
                          child: Text('Settings'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Logout',
                          child: Text('Logout'),
                        ),
                      ],
                      onSelected: (String value) {
                        // Handle menu item selection
                        if (value == 'Profile') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                        } else if (value == 'My Orders') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Orderstatus()));
                        } else if (value == 'Settings') {
                          // Handle option 3 selection
                        } else if (value == 'Logout') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        }
                      },
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/mikuu.png', // Replace with your image path
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(width: 100,),

                    const Text('Home',
                      style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold
                      ),
                    ),

                    const SizedBox(width: 100,),

                    IconButton(
                      icon: const Icon(Icons.shopping_cart, color: Color(0xffFF7C7E),), // Replace with the desired icon
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                      },
                    )
                  ],
                ),

                const SizedBox(height: 30,),

                Padding(padding: const EdgeInsets.only(right: 30, left: 30),
                child: TextField(
                  onSubmitted: (value) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search()));
                  },
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search, color: Color(0xffFF7C7E),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                ),

                const SizedBox(height: 30,),

                const SizedBox(
                  height: 200,
                  width: 350,
                  child: SlidingImages(),
                ),

                const SizedBox(height: 30,),

                const Text('Popular', style: TextStyle(fontWeight: FontWeight.bold),),
                
                SizedBox(
                  height: 400,
                  child: GridView.builder(
                    itemCount: 6,
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
                              mobileNames[index],
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),


              ],
          ),
          ),
        ),
      )
  
    );
  }
}

class SlidingImages extends StatefulWidget {
  const SlidingImages({Key? key}) : super(key: key);

  @override
  _SlidingImagesState createState() => _SlidingImagesState();
}

class _SlidingImagesState extends State<SlidingImages> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<String> _images = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
  ];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: _images.length,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
                _pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease); // Update the page controller
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  _images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildIndicators(),
        ),
      ],
    );
  }

  List<Widget> _buildIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(
        Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: i == _currentPage ? const Color(0xffFF7C7E) : Colors.grey,
            ),
          ),
        ),
      );
    }
    return indicators;
  }
}
