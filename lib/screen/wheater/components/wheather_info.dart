import 'package:flutter/material.dart';
import 'package:wheater_app/component/welcome_title.dart';
class WheaterInfo extends StatelessWidget {
  const WheaterInfo({
    super.key, required this.now, required this.image, required this.wheater,
  });
  final String now , image, wheater;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WelcomeTitle(title: now, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 15, textDecoration: TextDecoration.none),
        Image.asset(image,fit: BoxFit.contain,height: 65,width: 65,),
        Row(
          children: [
            WelcomeTitle(title: wheater, fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10, textDecoration: TextDecoration.none),
          ],
        )
      ],
    );
  }
}