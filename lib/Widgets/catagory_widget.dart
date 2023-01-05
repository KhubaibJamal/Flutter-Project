import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  String image;
  CategoryWidget({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 227, 227),
        // color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Image(
          image: AssetImage(image),
          color: const Color.fromARGB(255, 128, 128, 128),
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
