import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wheater_app/component/search_box.dart';
import 'package:wheater_app/screen/home/component/home_card_content.dart';
import 'package:wheater_app/screen/home/component/home_title_and_icon.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      left: 20,
      right: 20,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: MediaQuery.of(context).size.height * .98,
          width: MediaQuery.of(context).size.width * .6,
          decoration: BoxDecoration(
              color: Color.fromARGB(99, 102, 95, 95).withOpacity(.2),
              borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                HomeTitleAndIcon(),
                SearchBox(),
                SizedBox(
                  height: 50,
                ),
                HomeCardContent(image: 'assets/images/sol.png', location: 'My Location', wheater: 'Sunny', temp: '27\u2103',),
                SizedBox(
                  height: 15,
                ),
                HomeCardContent(image: 'assets/images/cloud.png', location: 'Chicago', wheater: 'Rainy', temp: '12\u2103',),
                SizedBox(
                  height: 15,
                ),
                HomeCardContent(image: 'assets/images/sol.png', location: 'London', wheater: 'Sunny', temp: '30\u2103',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


