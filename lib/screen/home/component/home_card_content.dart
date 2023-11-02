import 'package:flutter/material.dart';
import 'package:wheater_app/screen/home/component/home_title.dart';
import 'package:wheater_app/screen/wheater/screen_wheater.dart';
import 'package:wheater_app/screen/wheater/screen_wheater.rainy.dart';

class HomeCardContent extends StatelessWidget {
  const HomeCardContent({
    super.key,
    required this.image,
    required this.location,
    required this.wheater,
    required this.temp,
  });
  final String image, location, wheater, temp;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        wheater == 'Sunny'
            ? Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenWheater(temp: temp,),
                ))
            : Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenWheaterRainy(temp: temp,),
                ));
      },
      child: Stack(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * .21,
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(99, 112, 96, 96),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 20,
            child: Row( crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeTitle(
                      title: location,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      size: 25,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HomeTitle(
                      title: wheater,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      size: 24,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    HomeTitle(
                      title: temp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      size: 50,
                    )
                  ],
                ),
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 150,
                  width: 150,alignment: Alignment.topLeft,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
