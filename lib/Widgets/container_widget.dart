import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  Color containerColor;
  Color btnColor;
  Color btnTextColor;

  ContainerWidget(
      {required this.containerColor,
      required this.btnColor,
      required this.btnTextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5.25,
      width: MediaQuery.of(context).size.width / 1.25,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 18.0, right: 8.0, bottom: 8.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "20% OFF DURING THE WEEKEND",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(btnColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Get Now",
                style: TextStyle(
                  fontSize: 18,
                  color: btnTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
