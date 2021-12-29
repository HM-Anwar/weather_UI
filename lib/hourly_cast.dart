import 'package:flutter/material.dart';

class HourlyCast extends StatelessWidget {
  HourlyCast(
      {Key? key,
      required this.image,
      required this.centigrade,
      required this.time})
      : super(key: key);

  final String image;
  final String centigrade;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: Color((0xffF8F8F8)), borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(3),
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 35, child: Image.asset(image)),
          Text(
            "20°",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "4.00 PM",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: Color(0xff797778)),
          ),
        ],
      ),
    ));
  }
}
