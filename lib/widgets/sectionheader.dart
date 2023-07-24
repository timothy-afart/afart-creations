import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String text;
  const SectionHeader({Key? key, required this.text}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize:20,
        color: Colors.white,
      ),
    );
  }
}