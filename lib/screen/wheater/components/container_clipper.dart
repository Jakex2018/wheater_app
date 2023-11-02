import 'package:flutter/material.dart';
import 'package:wheater_app/screen/wheater/components/today_and_country.dart';

class ContainerClipper extends StatelessWidget {
  const ContainerClipper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 350,
      left: 0,
      child: ClipPath(
        clipper: MyClipper(),
        child: Stack(
          children: [
            Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          ]
        ),
      ),
    );
  }
}

