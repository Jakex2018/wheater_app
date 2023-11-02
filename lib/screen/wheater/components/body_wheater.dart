import 'package:flutter/material.dart';
import 'package:wheater_app/screen/home/component/home_image.dart';
import 'package:wheater_app/screen/wheater/components/container_clipper.dart';
import 'package:wheater_app/screen/wheater/components/wheater_info_content.dart';

class BodyWheater extends StatelessWidget {
  const BodyWheater({
    super.key, required this.wheater, required this.temp,
  });
  final String wheater, temp;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        wheater== 'Sunny'?
        HomeImage(image: 'assets/images/bk.jpg', wheater: wheater, temp:temp,):
        HomeImage(image: 'assets/images/rain.jpg', wheater: wheater, temp: temp,),

        const ContainerClipper(), 
        Positioned.fill(
            top:250,left: 250,
            child: Icon(Icons.add_circle_outlined,size: 80,color: Colors.grey.withOpacity(.9),shadows: const [
              BoxShadow(
                offset: Offset(0, 3),blurRadius: 60,
              )
            ]),
          ),
        const WheaterInfoContent()
      ],
    );
  }
}
