import 'package:cyber_scape/buying.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<bool> isCheckedList = [false, false, false, false, false];
  final ValueNotifier<String> _selectedValue = ValueNotifier<String>('8gb/128gb');

  List<int> counts = [0, 0, 0, 0, 0]; // List to store count values
  List<TextEditingController> controllers = List.generate(
    5,
    (_) => TextEditingController(),
  ); // List of text controllers

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < counts.length; i++) {
      controllers[i].text = counts[i].toString();
    }
  }

  @override
  void dispose() {
    for (TextEditingController controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
            title: const Text('My Cart'),
            backgroundColor: const Color(0xffFF7C7E),
            elevation: 0,
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(padding: const EdgeInsets.all(10),
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
                                children: [
                                  const SizedBox(height: 5,),
                                  const Text('Xiaomi Redmi Note 11...', style: TextStyle(fontSize: 18),),
                                  const Text('Xiaomi Official', style: TextStyle(fontSize: 14),),
                                  const SizedBox(height: 10,),
                                  const Text('8gb/128gb', style: TextStyle(fontSize: 14, color: Color(0xffFF7C7E)),),
                                  const Text('P17,999', style: TextStyle(fontSize: 18, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 115,
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
                                                  if (counts[0] > 0) {
                                                    counts[0]--;
                                                    controllers[0].text = counts[0].toString();
                                                  }
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              width: 15,
                                              child: TextField(
                                                controller: controllers[0],
                                                keyboardType: TextInputType.number,
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    counts[0] = int.tryParse(newValue) ?? counts[0];
                                                  });
                                                },
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.add, size: 10),
                                              onPressed: () {
                                                setState(() {
                                                  counts[0]++;
                                                  controllers[0].text = counts[0].toString();
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 40,),

                                      Checkbox(
                                        value: isCheckedList[0],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isCheckedList[0] = value ?? false;
                                          });
                                        },
                                        activeColor: const Color(0xffFF7C7E),
                                      ),

                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ),

                        const SizedBox(height: 10,), //next List_____________________________

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
                                  'assets/images/list2.jpg',
                                  fit: BoxFit.cover,
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 5,),
                                  const Text('Xiaomi Redmi 10C', style: TextStyle(fontSize: 18),),
                                  const Text('Xiaomi Official', style: TextStyle(fontSize: 14),),
                                  const SizedBox(height: 10,),
                                  const Text('Ocean Blue', style: TextStyle(fontSize: 14, color: Color(0xffFF7C7E)),),
                                  const Text('P5,999', style: TextStyle(fontSize: 18, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 115,
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
                                                  if (counts[1] > 0) {
                                                    counts[1]--;
                                                    controllers[1].text = counts[1].toString();
                                                  }
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              width: 15,
                                              child: TextField(
                                                controller: controllers[1],
                                                keyboardType: TextInputType.number,
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    counts[1] = int.tryParse(newValue) ?? counts[1];
                                                  });
                                                },
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.add, size: 10),
                                              onPressed: () {
                                                setState(() {
                                                  counts[1]++;
                                                  controllers[1].text = counts[1].toString();
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 40,),

                                      Checkbox(
                                        value: isCheckedList[1],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isCheckedList[1] = value ?? false;
                                          });
                                        },
                                        activeColor: const Color(0xffFF7C7E),
                                      ),

                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ),

                        const SizedBox(height: 10,), //next List_____________________________

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
                                  'assets/images/list4.jpg',
                                  fit: BoxFit.cover,
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 5,),
                                  const Text('Xiaomi POCO F4', style: TextStyle(fontSize: 18),),
                                  const Text('brick brickson', style: TextStyle(fontSize: 14),),
                                  const SizedBox(height: 10,),
                                  const Text('12gb/256gb', style: TextStyle(fontSize: 14, color: Color(0xffFF7C7E)),),
                                  const Text('P24,999', style: TextStyle(fontSize: 18, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 115,
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
                                                  if (counts[2] > 0) {
                                                    counts[2]--;
                                                    controllers[2].text = counts[2].toString();
                                                  }
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              width: 15,
                                              child: TextField(
                                                controller: controllers[2],
                                                keyboardType: TextInputType.number,
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    counts[2] = int.tryParse(newValue) ?? counts[2];
                                                  });
                                                },
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.add, size: 10),
                                              onPressed: () {
                                                setState(() {
                                                  counts[2]++;
                                                  controllers[2].text = counts[2].toString();
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 40,),

                                      Checkbox(
                                        value: isCheckedList[2],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isCheckedList[2] = value ?? false;
                                          });
                                        },
                                        activeColor: const Color(0xffFF7C7E),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ),

                        const SizedBox(height: 10,), //next List_____________________________

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
                                  'assets/images/list9.jpg',
                                  fit: BoxFit.cover,
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 5,),
                                  const Text('Xiaomi 13 Ultra', style: TextStyle(fontSize: 18),),
                                  const Text('Ginez heras store', style: TextStyle(fontSize: 14),),
                                  const SizedBox(height: 10,),
                                  const Text('12gb/256gb', style: TextStyle(fontSize: 14, color: Color(0xffFF7C7E)),),
                                  const Text('P60,999', style: TextStyle(fontSize: 18, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 115,
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
                                                  if (counts[3] > 0) {
                                                    counts[3]--;
                                                    controllers[3].text = counts[3].toString();
                                                  }
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              width: 15,
                                              child: TextField(
                                                controller: controllers[3],
                                                keyboardType: TextInputType.number,
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    counts[3] = int.tryParse(newValue) ?? counts[3];
                                                  });
                                                },
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.add, size: 10),
                                              onPressed: () {
                                                setState(() {
                                                  counts[3]++;
                                                  controllers[3].text = counts[3].toString();
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 40,),

                                      Checkbox(
                                        value: isCheckedList[3],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isCheckedList[3] = value ?? false;
                                          });
                                        },
                                        activeColor: const Color(0xffFF7C7E),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ),

                        const SizedBox(height: 10,), //next List_____________________________

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
                                  'assets/images/list3.jpg',
                                  fit: BoxFit.cover,
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 5,),
                                  const Text('Xiaomi Mi Pad 5', style: TextStyle(fontSize: 18),),
                                  const Text('Xiaomi Global', style: TextStyle(fontSize: 14),),
                                  const SizedBox(height: 10,),
                                  const Text('Polar White', style: TextStyle(fontSize: 14, color: Color(0xffFF7C7E)),),
                                  const Text('P16,639', style: TextStyle(fontSize: 18, color: Color(0xffFF7C7E), fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 115,
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
                                                  if (counts[4] > 0) {
                                                    counts[4]--;
                                                    controllers[4].text = counts[4].toString();
                                                  }
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              width: 15,
                                              child: TextField(
                                                controller: controllers[4],
                                                keyboardType: TextInputType.number,
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    counts[4] = int.tryParse(newValue) ?? counts[4];
                                                  });
                                                },
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.add, size: 10),
                                              onPressed: () {
                                                setState(() {
                                                  counts[4]++;
                                                  controllers[4].text = counts[4].toString();
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 40,),

                                      Checkbox(
                                        value: isCheckedList[4],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isCheckedList[4] = value ?? false;
                                          });
                                        },
                                        activeColor: const Color(0xffFF7C7E),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffFF7C7E),
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
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Buying()));},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xffFF7C7E),
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Buy',
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