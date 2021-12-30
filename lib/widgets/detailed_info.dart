import 'package:flutter/material.dart';

class DetailedInfo extends StatelessWidget {
  const DetailedInfo(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF8F8F8),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Container(height: 60, child: Image.asset(image)),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            subtitle,
            // textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
