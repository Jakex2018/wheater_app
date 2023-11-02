import 'package:flutter/material.dart';
import 'package:wheater_app/component/welcome_title.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    super.key, required this.image, required this.wheater, required this.temp,
  });
  final String image , wheater, temp;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
         SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(image, fit: BoxFit.cover)),
         Positioned(
          top: 120,left: 30,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeTitle(title: wheater, fontWeight: FontWeight.bold, color: Colors.white, fontSize: 60, textDecoration: TextDecoration.none,),
              const SizedBox(height: 20,),
              WelcomeTitle(title: temp, fontWeight: FontWeight.bold, color: Colors.white, fontSize: 80, textDecoration: TextDecoration.none,)
            ],
          ),
        )
      ]
    );
  }
}