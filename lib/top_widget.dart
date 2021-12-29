import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  TopWidget(
      {Key? key,
      required this.country,
      required this.dateTime,
      required this.weatherIcon,
      required this.centigrade,
      required this.weatherStatus,
      required this.lastUpdate})
      : super(key: key);

  final String country;
  final String dateTime;
  final String weatherIcon;
  final String centigrade;
  final String weatherStatus;
  final String lastUpdate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff4879F0), Color(0xff3F6AE0), Color(0xff3260D0)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ListTile(
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15,
                ),
                title: Text(
                  country,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              dateTime,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.5,
              ),
            ),
            Container(
              height: 85,
              child: Image.asset(weatherIcon),
            ),
            Text(
              centigrade,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              weatherStatus,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  lastUpdate,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 17,
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
