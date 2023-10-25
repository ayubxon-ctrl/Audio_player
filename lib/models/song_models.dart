class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});
  static List<Song> songs = [
    Song(
        title: "Yomonsan",
        description: "Janob Rasul",
        url: "assets/music/rasul.m4a",
        coverUrl: "assets/music/rasul.png"),
    Song(
        title: "Aylanayin",
        description: "Noker Meretov",
        url: "assets/music/musiqa2.m4a",
        coverUrl: "assets/music/noker.png"),
    Song(
        title: "Sevgim O'yin boldimi",
        description: "Ozoda Nursaidova",
        url: "assets/music/musiqa3.m4a",
        coverUrl: "assets/music/ozoda.png"),
  ];
}
