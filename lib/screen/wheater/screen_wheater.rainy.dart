import 'package:flutter/material.dart';
import 'package:wheater_app/screen/wheater/components/body_wheater.dart';

class ScreenWheaterRainy extends StatelessWidget {
  const ScreenWheaterRainy({super.key, required this.temp});
  final String temp;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BodyWheater(wheater: 'Rain', temp: temp,),
    );
  }
}