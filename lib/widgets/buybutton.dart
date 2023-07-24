import 'package:flutter/material.dart';
import 'package:afart_creations/models/models.dart';
import 'package:afart_creations/responsiveness/dimensions.dart';

class BuyButton extends StatelessWidget {
  final Song song;

  const BuyButton({Key? key, required this.song}) : super(key :  key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showPurchaseConfirmationDialog(context);
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.buttonRadius),
          ),
        ),
      ),
      child: const Text('BUY',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
    void _showPurchaseConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Purchase"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Song: ${song.title}"),
              SizedBox(height: Dimensions.alertMessageSeparatorHeight),
              Text("Price: ${song.price} /="),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Perform the purchase action here
                // (e.g., initiate payment process or show a success message)
                Navigator.of(context).pop();
              },
              child: const Text("Confirm"),
            ),
            TextButton(
              onPressed: () {
                // Cancel the purchase action
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}

