import 'package:flutter/material.dart';
class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key, required this.title, required this.color, required this.fontWeight, required this.size,
  });
  final String title;
  final Color color;
  final FontWeight fontWeight;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color:color, fontWeight: FontWeight.bold, fontSize: size),
    );
  }
}
