import 'dart:ui';

import 'package:flutter/material.dart';

class HomeImageFilter extends StatelessWidget {
  const HomeImageFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(filter: ImageFilter.blur(sigmaX: 20,sigmaY: 10),
    child: Container(
      color: const Color.fromARGB(101, 255, 255, 255),
    ),);
  }
}
