import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_icons/weather_icons.dart';
import 'top_widget.dart';

class WeatherInput extends StatefulWidget {
  const WeatherInput({Key? key}) : super(key: key);

  @override
  _WeatherInputState createState() => _WeatherInputState();
}

class _WeatherInputState extends State<WeatherInput> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopWidget(
            country: "Pakistan, karachi",
            dateTime: 'Tuesday, 28 December 2021 - 3:30 PM',
            weatherIcon: 'images/sun-rain.png',
            centigrade: '18°C',
            weatherStatus: "Cloudy Rain",
            lastUpdate: "Last Update 3.00 PM",
          ),
          Text(
            "Hourly Forecast",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                HourlyGrid(),
                HourlyGrid(),
                HourlyGrid(),
                HourlyGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HourlyGrid extends StatelessWidget {
  const HourlyGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(3),
      height: 120,
      color: Color(0xffF6F4F7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 45, height: 45, child: Image.asset('images/sun-rain.png')),
          Text(
            "20°",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "4.00 PM",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade500),
          ),
        ],
      ),
    ));
  }
}
