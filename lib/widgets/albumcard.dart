import 'package:flutter/material.dart';
import 'package:afart_creations/models/models.dart';
import '../responsiveness/dimensions.dart';

class AlbumCard extends StatelessWidget {
  final Album album;

  const AlbumCard({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Dimensions.padding10),
      height: 250,
      width: 150,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(album.albumArt),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue[400],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  album.albumName,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3.0),
                Text(album.artistName),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
