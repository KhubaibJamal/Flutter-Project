import 'package:flutter/material.dart';
import 'package:navigate_data/Widgets/container_widget.dart';
import 'package:navigate_data/Widgets/grid_view_widget.dart';

import 'item_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var categoryItem = [
    'assets/watch.png',
    'assets/t-shirt.png',
    'assets/bag.png',
    'assets/shoe.png',
    'assets/glasses.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.067),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello Fola 👋",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Let's start shopping",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContainerWidget(
                        containerColor: const Color(0xfff17547),
                        btnColor: Colors.white,
                        btnTextColor: const Color(0xfff17547),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.0467),
                      ContainerWidget(
                        containerColor: const Color(0xff1383f1),
                        btnColor: const Color(0xff50d63b),
                        btnTextColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Top Categories",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xfff17547),
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int i = 0; i < categoryItem.length; i++)
                              Container(
                                height: 75,
                                width: 75,
                                margin: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 228, 227, 227),
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Center(
                                    child: Image(
                                      image: AssetImage(categoryItem[i]),
                                      color: const Color.fromARGB(
                                          255, 128, 128, 128),
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      GridViewWidget(),
                    ],
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
