import 'package:flutter/material.dart';
import '../responsiveness/dimensions.dart';

class DepositeButton extends StatelessWidget {
  final VoidCallback onPress;

  const DepositeButton({Key? key, required this.onPress}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.buttonRadius),
        ),
      ), 
      child: const Text('Deposite'),
    );
  }
}