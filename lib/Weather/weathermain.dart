import 'package:flutter/material.dart';
import 'package:apps_combination/Weather/screens/loading_screen.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(WeatherMyApp());

class WeatherMyApp extends StatelessWidget {
  @override
  void initState(){

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
