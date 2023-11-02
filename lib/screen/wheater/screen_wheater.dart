import 'package:flutter/material.dart';
import 'package:wheater_app/screen/wheater/components/body_wheater.dart';

class ScreenWheater extends StatelessWidget {
  const ScreenWheater({super.key, required this.temp});
  final String temp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BodyWheater(wheater: 'Sunny', temp: temp,));
  }
}