import 'package:flutter/material.dart';

class BottomWidgets extends StatelessWidget {
  BottomWidgets(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final Icon icon;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color(0xffF8F8F8),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            child: icon,
          ),
          const SizedBox(
            width: 13,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Color(0xff7C7A7B)),
              )
            ],
          )
        ],
      ),
    ));
  }
}
