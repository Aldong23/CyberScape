import 'package:cyber_scape/buying.dart';
import 'package:cyber_scape/cart.dart';
import 'package:flutter/material.dart';

class Mobilecontent extends StatefulWidget {
  const Mobilecontent({ Key? key }) : super(key: key);

  @override
  _MobilecontentState createState() => _MobilecontentState();
}

class _MobilecontentState extends State<Mobilecontent> {
  int _count = 0;
  final TextEditingController _countController = TextEditingController();
  final ValueNotifier<String> _selectedValue = ValueNotifier<String>('8gb/128gb');

  @override
  void initState() {
    super.initState();
    _countController.text = _count.toString();
  }

  @override
  void dispose() {
    _countController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffD9D9D9)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/redmi11.jpg', fit: BoxFit.cover,),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.white,
                    child: Padding(padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('P17,999', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xffFF7C7E)),),
                        const Text('Xiaomi Redmi Note 11 Pro 5G', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        const SizedBox(height: 10,),
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.yellow,),
                            Icon(Icons.star, color: Colors.yellow,),
                            Icon(Icons.star, color: Colors.yellow,),
                            Icon(Icons.star, color: Colors.yellow,),
                            Icon(Icons.star, color: Colors.yellow,),
                            Text('5.0', style: TextStyle(color: Colors.yellow),)
                          ],
                        )
                      ],
                    ),
                    ),
                  ),

                  const SizedBox(height: 10,),

                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.white,
                    child: Padding(padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/images/xiaomi.png', // Replace with your image path
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Xiaomi Official', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              Text('China', style: TextStyle(fontSize: 12),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 2,),

                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(padding: const EdgeInsets.only(bottom: 50, top: 10, right: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Description', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          SizedBox(height: 15,),
                          Text('Processor: Snapdragon® 695, CPU: Octa-core CPU, up to 2.2GHz, GPU: Qualcomm® Adreno™ 619'),
                          SizedBox(height: 10,),
                          Text('Storage and RAM: 6+64/6+128/8+128GB, LPDDR4X + UFS2.2, Expandable storage up to 1TB'),
                          SizedBox(height: 10,),
                          Text('Dimensions: Height: 164.19mm, Width: 76.1mm, Thickness: 8.12mm, Weight: 202g'),
                          SizedBox(height: 10,),
                          Text('Display: 6.67" FHD+ AMOLED DotDisplay, Refresh rate: Up to 120Hz, Brightness: HBM 700 nits (typ), 1200 nits peak brightness (typ), Contrast ratio: 4,500,000:1, Resolution: 2400 x 1080, DCI-P3 wide color gamut, 395 ppi, Sunlight display, Reading mode 3.0'),
                          SizedBox(height: 10,),
                          Text('Rear camera: 108MP wide camera, f/1.9, 0.7μm, 9-in-1 binning into one large 2.1μm pixel, 1/1.52” sensor size, 8MP ultra-wide camera, f/2.2, FOV 118°, 2MP macro camera'),
                          SizedBox(height: 10,),
                          Text('Display: 6.67" FHD+ AMOLED DotDisplay, Refresh rate: Up to 120Hz, Brightness: HBM 700 nits (typ), 1200 nits peak brightness (typ), Contrast ratio: 4,500,000:1, Resolution: 2400 x 1080, DCI-P3 wide color gamut, 395 ppi, Sunlight display, Reading mode 3.0'),
                          SizedBox(height: 10,),
                          Text('Rear camera: 108MP wide camera, f/1.9, 0.7μm, 9-in-1 binning into one large 2.1μm pixel, 1/1.52” sensor size, 8MP ultra-wide camera, f/2.2, FOV 118°, 2MP macro camera'),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),

                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  const SizedBox(height: 30,),

                    ],
                  ),
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
                    SizedBox(
                      width: 150,
                      height: 100,
                      // height: double.infinity,
                      child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Add to cart'),
                              content: Row(
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/images/redmi11.jpg', // Replace with your image path
                                      height: 80,
                                      width: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    height: 110, // Set the desired height
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[
                                        const Text('Redmi Note 11 Pro 5G', style: TextStyle(fontSize: 15),),
                                        const Text('P17,999', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xffFF7C7E)),),
                                        Container(
                                          width: 130,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0xffFF7C7E),
                                              width: 1.0,
                                            ),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: ValueListenableBuilder<String>(
                                              valueListenable: _selectedValue,
                                              builder: (BuildContext context, String value, _) {
                                                return DropdownButton<String>(
                                                  value: value,
                                                  items: <String>['8gb/128gb', '8gb/256gb', '12gb/256gb'].map((String itemValue) {
                                                    return DropdownMenuItem<String>(
                                                      value: itemValue,
                                                      child: Center(child: Text(itemValue)),
                                                    );
                                                  }).toList(),
                                                  onChanged: (String? newValue) {
                                                    _selectedValue.value = newValue ?? value;
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),

                                        const SizedBox(height: 5,),

                                        Container(
                                          height: 25,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: const Color(0xffFF7C7E)),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                icon: const Icon(Icons.remove, size: 10),
                                                onPressed: () {
                                                  setState(() {
                                                    if (_count > 0) {
                                                      _count--;
                                                      _countController.text = _count.toString(); // Update the TextField value
                                                    }
                                                  });
                                                },
                                              ),
                                              SizedBox(
                                                width: 30,
                                                child: TextField(
                                                  controller: _countController,
                                                  keyboardType: TextInputType.number,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _count = int.tryParse(newValue) ?? _count;
                                                    });
                                                  },
                                                  decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                  ),
                                                  textAlign: TextAlign.center,                                                                                          ),
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.add, size: 10),
                                                onPressed: () {
                                                  setState(() {
                                                    _count++;
                                                    _countController.text = _count.toString(); // Update the TextField value
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Cancel'),
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Close the dialog
                                  },
                                ),
                                TextButton(
                                  child: const Text('Add'),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                                  },
                                ),
                              ],
                            );
                            },
                          );
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color.fromARGB(0, 255, 124, 126),
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Icon(Icons.add_shopping_cart, color: Color(0xffFF7C7E),),
                            Text('Add to Cart', style: TextStyle(fontSize: 12.0, color: Color(0xffFF7C7E)),
                            ),
                          ],
                        )
                      ),
                    ),
                  ),
                    const SizedBox(width: 50,),
                    SizedBox(
                      width: 150,
                      height: 100,
                      // height: double.infinity,
                      child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Buying()));},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xffFF7C7E),
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Icon(Icons.shopping_bag,),
                            Text('Buy Now', style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        )
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