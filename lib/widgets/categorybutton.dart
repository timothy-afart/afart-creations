import 'package:afart_creations/responsiveness/dimensions.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  const CategoryButton({Key? key, required this.text}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.categoryButtonWidth,
      margin: EdgeInsets.only(right: Dimensions.margin10),
      child: ElevatedButton(
        onPressed: (){}, 
        child: SizedBox(
          child: Text(text),
        )
      ),
    );
  }
}