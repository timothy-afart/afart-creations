import 'package:flutter/material.dart';
import 'package:afart_creations/models/models.dart';
import 'package:afart_creations/widgets/widgets.dart';

import '../responsiveness/dimensions.dart';

class PopularCard extends StatelessWidget {
  final Song song;
  const PopularCard({Key? key, required this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double imageWidth = screenWidth * 0.15;

    return Container(
      height: imageWidth + 20,
      margin: EdgeInsets.only(bottom: Dimensions.margin10),
      padding: EdgeInsets.symmetric(horizontal: Dimensions.marginH20),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(Dimensions.popularCardRadius),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimensions.popularCardRadius),
            child: Image.asset(
              song.coverPhoto,
              height: imageWidth,
              width: imageWidth,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: Dimensions.sizedBoxWidth20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    song.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: Dimensions.sizeBoxHeight4),
                Flexible(
                  child: Text(
                    song.artist,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: Dimensions.sizedBoxWidth20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BuyButton(song: song), // Assumes a BuyButton widget is defined elsewhere
              SizedBox(height: Dimensions.sizeBoxHeight4),
              Text(
                '${song.price.toString()} /=',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
