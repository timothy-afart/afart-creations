class Song {
  final String title;
  final String artist;
  final String coverPhoto;
  final String songUrl;
  final int price;
  
  Song({
    required this.title,
    required this.artist,
    required this.coverPhoto,
    required this.songUrl,
    required this.price
  });

  static List<Song> songs = [
    Song(
      title: "Easy On Me",
      artist: "Adele",
      coverPhoto: "songs/covers/easy-adele.jpg",
      songUrl: "songs/audio/Easy On Me.mp3",
      price: 1000
    ),
    Song(
      title: "Stigmatized",
      artist: "The Calling",
      coverPhoto: "songs/covers/stigmatized.jpg",
      songUrl: "songs/audio/Stigmatized.mp3",
      price: 700
    ),
    Song(
      title: "Mubitabo",
      artist: "Quex",
      coverPhoto: "songs/covers/Mubitabo.jpg",
      songUrl: "songs/audio/Mubitabo.mp3",
      price: 500
    ),
    Song(
      title: "Brave",
      artist: "Fancy Cars",
      coverPhoto: "songs/covers/brave.jpg",
      songUrl: "songs/audio/Brave.mp3",
      price: 800
    )
  ];
}
