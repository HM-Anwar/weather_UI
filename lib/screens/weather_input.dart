import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/bottom_widget.dart';
import '../widgets/top_widget.dart';
import '../widgets/hourly_cast.dart';
import '../widgets/detailed_info.dart';

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
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildText("Hourly Forecast"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        HourlyCast(
                          image: 'images/sun-rain.png',
                          centigrade: '20°',
                          time: '4.00 PM',
                        ),
                        HourlyCast(
                          image: 'images/rain.png',
                          centigrade: '20°',
                          time: '5.00 PM',
                        ),
                        HourlyCast(
                          image: 'images/storm.png',
                          centigrade: '19°',
                          time: '6.00 PM',
                        ),
                        HourlyCast(
                          image: 'images/cloud.png',
                          centigrade: '19°',
                          time: '7.00 PM',
                        ),
                      ],
                    ),
                  ),
                  buildText('Detail Information'),
                  DetailedInfo(
                    image: 'images/indicator.png',
                    title: 'AQI - Good Quality',
                    subtitle:
                        'Value of 40 or below represents good air quality,while AQI value over 300 represents hazardous   air quality.',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        BottomWidgets(
                          icon: Icon(
                            Icons.air,
                            color: Color(0xffB3C7EDC),
                          ),
                          title: '86%',
                          subtitle: 'Humidity',
                        ),
                        BottomWidgets(
                          icon: Icon(
                            Icons.all_inclusive,
                            color: Color(0xffB3C7EDC),
                          ),
                          title: '940 hPa',
                          subtitle: 'Air Pressure',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        BottomWidgets(
                          icon: Icon(
                            Icons.beach_access_outlined,
                            color: Color(0xffB3C7EDC),
                          ),
                          title: '4 km/h',
                          subtitle: 'Visibility',
                        ),
                        BottomWidgets(
                          icon: Icon(
                            Icons.auto_graph_sharp,
                            color: Color(0xffB3C7EDC),
                          ),
                          title: '18°C',
                          subtitle: 'Feel Like',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildText(String text) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 20),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
      ),
    );
  }
}
