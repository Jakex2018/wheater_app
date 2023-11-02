import 'package:flutter/material.dart';
import 'package:wheater_app/screen/home/component/home_container.dart';
import 'package:wheater_app/screen/home/component/home_image.dart';
import 'package:wheater_app/screen/home/component/home_image_filter.dart';
class BodyHome extends StatelessWidget {
  const BodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        HomeImage(image: 'assets/images/bk.jpg', wheater: '', temp: '',),
        HomeImageFilter(),
        HomeContainer()
      ],
    );
  }
}




