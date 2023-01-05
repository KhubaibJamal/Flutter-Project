import 'package:flutter/material.dart';
import 'package:navigate_data/Screens/item_screen.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key}) : super(key: key);

  var productName = [
    'Redmi Note 4',
    'Apple Watch 6',
    'Garmin Watch',
    'Classical Watch',
  ];

  var productImage = [
    'Redmi Note 4.png',
    'Apple Watch 6.png',
    'Garmin Watch.png',
    'Classical Watch.png',
  ];

  var productPrice = [
    '30',
    '25',
    '35',
    '30',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productName.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: ((context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ItemScreen(
                  itemImage: productImage[index],
                  itemName: productName[index],
                  itemPrice: productPrice[index],
                ),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 235, 235, 235),
              // color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 4,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "50% OFF",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/${productName[index]}.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName[index],
                        style: const TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${productPrice[index]}',
                            style: const TextStyle(
                              fontSize: 19.0,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            '\$50',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
