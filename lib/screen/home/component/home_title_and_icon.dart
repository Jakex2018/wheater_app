import 'package:flutter/material.dart';
class HomeTitleAndIcon extends StatelessWidget {
  const HomeTitleAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Text('Wheater',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
         Icon(Icons.menu,color: Colors.white,)
        ],
      ),
    );
  }
}