import 'package:afart_creations/models/song.dart';

class Album{
  final String albumName;
  final String artistName;
  final List<Song> songs;
  final String albumArt;
  const Album(
    {
      required this.albumName,
      required this.artistName,
      required this.songs,
      required this.albumArt,
    }
  );

  static List<Album> albums = [
    Album(
      albumName: 'Big tune', 
      artistName: 'JK Banton',
      albumArt: 'songs/covers/stigmatized.jpg',
      songs: Song.songs
    ),
    Album(
      albumName: 'Only one', 
      artistName: 'Prince Hut', 
      songs: Song.songs,
      albumArt: 'songs/covers/stigmatized.jpg'
    ),
    Album(
      albumName: 'Feeling good', 
      artistName: 'Anthony J', 
      songs: Song.songs,
      albumArt: 'songs/covers/stigmatized.jpg'
    ),
    Album(
      albumName: 'Born to Conquer', 
      artistName: 'Star Boy', 
      songs: Song.songs,
      albumArt: 'songs/covers/stigmatized.jpg'
    ),
  ];
}