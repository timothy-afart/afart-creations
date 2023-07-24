import 'package:flutter/material.dart';
import 'package:afart_creations/models/models.dart';
import '../responsiveness/dimensions.dart';


class Artist extends StatelessWidget {
  const Artist({required this.song, Key? key}) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerSize = screenWidth * 0.3;
    final double imageSize = containerSize * 0.7;

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: containerSize,
        width: containerSize,
        padding: EdgeInsets.only(right: Dimensions.padding10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: imageSize,
              width: imageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(song.coverPhoto),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: Dimensions.sizeBoxHeight5),
            Flexible(
              child: Text(
                song.artist,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
