import 'package:flutter/material.dart';
import 'package:wheater_app/constant.dart';
import 'package:wheater_app/screen/wheater/components/today_and_country.dart';
import 'package:wheater_app/screen/wheater/components/wheather_info.dart';

class WheaterInfoContent extends StatelessWidget {
  const WheaterInfoContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 30,right: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: aDefaultPadding),
        child: Column(
          children: [
            TodayAndCountry(),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  WheaterInfo(now: 'Now', image: 'assets/images/sol.png', wheater: '27\u2103',),
                  WheaterInfo(now: '12 pm', image: 'assets/images/sol.png', wheater: '24\u2103',),
                  WheaterInfo(now: '5 pm', image: 'assets/images/sol.png', wheater: '30\u2103',),
                  WheaterInfo(now: '10 pm', image: 'assets/images/sol.png', wheater: '30\u2103',),
                  WheaterInfo(now: '2 am', image: 'assets/images/sol.png', wheater: '30\u2103',),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}