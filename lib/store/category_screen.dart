import 'package:flutter/material.dart';
import 'package:afart_creations/widgets/widgets.dart';
import 'package:afart_creations/models/models.dart';

import '../responsiveness/dimensions.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Album> albums = Album.albums;

    return Scaffold(
      body: Column(
        children: [
          MainHeader(text: category),
          SizedBox(height: Dimensions.sectionSeparatorHeight),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
              child: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.padding10,
                  right: Dimensions.padding10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    // Artists of the week
                    const SectionHeader(text: 'Artists of the week'),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        // Calculate the number of albums per row based on the available horizontal space
                        final double artistCardWidth =
                            constraints.maxWidth * 0.3; // Adjust the scaling factor as needed

                        // Limit the number of artists to avoid overflow
                        final int maxArtists =  songs.length < 7 ?songs.length: 6;

                        return Wrap(
                          spacing:
                              10.0, // Adjust the spacing between the album cards as needed
                          runSpacing: 10.0, // Adjust the spacing between the rows as needed
                          children: List.generate(maxArtists, (index) {
                            return SizedBox(
                              width: artistCardWidth,
                              child: Artist(song: songs[index]),
                            );
                          }),
                        );
                      },
                    ),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),

                    // New songs
                    const SectionHeader(text: 'New songs'),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: songs.length < 10 ? songs.length : 10, // Limit the number of songs to avoid overflow
                      itemBuilder: (context, index) {
                        return PopularCard(song: songs[index]);
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 2.0),
                    ),

                    // Albums
                    SizedBox(height: Dimensions.sectionSeparatorHeight),
                    const SectionHeader(text: 'Albums'),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),

                    LayoutBuilder(
                      builder: (context, constraints) {
                        final int maxAlbums = albums.length < 10 ? albums.length : 10;

                        return SizedBox(
                          height: 220,
                          child: ListView.builder(
                            physics:
                                const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
                            scrollDirection: Axis.horizontal,
                            itemCount: maxAlbums,
                            itemBuilder: (context, index) {
                              return AlbumCard(album: albums[index]);
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
