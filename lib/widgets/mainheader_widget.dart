import 'package:afart_creations/responsiveness/dimensions.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  final String text;
  const MainHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.margin45),
      padding: EdgeInsets.only(left:Dimensions.padding10, right: Dimensions.padding10),
      height: Dimensions.containerHeight50,
      child: Row(
        children: 
        [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )
        ]
      ),
    );
  }
}