import 'package:flutter/material.dart';
import 'package:afart_creations/models/models.dart';
import 'package:afart_creations/responsiveness/dimensions.dart';
import 'package:afart_creations/widgets/widgets.dart';

class DiscoverCard extends StatelessWidget {
  final Song song;

  const DiscoverCard({Key? key, required this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Dimensions.padding10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: Dimensions.discoverSectionMainContainerWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.discoverMainContainerRadius),
              image: DecorationImage(
                image: AssetImage(song.coverPhoto),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: Dimensions.margin10),
            height: 80,
            width: Dimensions.discoverSectionSubContainerWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.discoverMainContainerRadius),
              color: Colors.black54
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        song.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: Dimensions.sizeBoxHeight5),
                      Text(
                        song.artist,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BuyButton(song: song),
                    Text('${song.price} /='),
                  ],
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}