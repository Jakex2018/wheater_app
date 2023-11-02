import 'package:flutter/material.dart';
import 'package:wheater_app/component/welcome_title.dart';

class TodayAndCountry extends StatelessWidget {
  const TodayAndCountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        WelcomeTitle(title: 'Today', fontWeight: FontWeight.bold, color: Colors.black, fontSize: 35, textDecoration:TextDecoration.none),
        SizedBox(width: 150),
        WelcomeTitle(title: 'USA', fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16, textDecoration:TextDecoration.none)
      ],
    );
  }
}

// ignore: camel_case_types
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0); // Mueve el lápiz a la esquina superior izquierda

    // Define la curva de onda en la parte inferior
    path.quadraticBezierTo(size.width / 4, size.height / 5,
        size.width, size.height / 4.5);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height / 5,
        size.width, size.height / 4.5);

    // Línea vertical ascendente para cerrar el contorno
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close(); // Cierra el contorno

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}