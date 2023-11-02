import 'package:flutter/material.dart';
import 'package:wheater_app/constant.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key, required, ///required this.onChanged,
  });
  ///final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(aDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding, vertical: 1),
      decoration: BoxDecoration(
        // ignore: prefer_const_constructors
        color:Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
        borderRadius: BorderRadius.circular(20)
      ),
      child:const TextField(
        style: TextStyle(color: Color(0xffA8A8A8)),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(Icons.search_rounded,color:Colors.black26,),
          hintText: 'Find your Protein',
          hintStyle:TextStyle(color: Color.fromARGB(255, 184, 179, 179))
        ),
      ),
    );
  }
}