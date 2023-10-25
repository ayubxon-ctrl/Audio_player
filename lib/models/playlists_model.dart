import 'package:flutter_application_1/models/song_models.dart';

class Playlist {
  final String title;
  final String imageUrl;
  final List<Song> songs;

  Playlist({required this.title, required this.imageUrl, required this.songs});
  static List<Playlist> playlists = [
    Playlist(title: "Hip Hop M&X", imageUrl: "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWN8ZW58MHx8MHx8fDA%3D", songs: Song.songs),
    Playlist(title: "Rock & Roll", imageUrl: "https://images.unsplash.com/photo-1487180144351-b8472da7d491?auto=format&fit=crop&q=80&w=2944&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", songs: Song.songs),
    Playlist(title: "Techno", imageUrl: "https://images.unsplash.com/photo-1506157786151-b8491531f063?auto=format&fit=crop&q=80&w=2940&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", songs: Song.songs),

  ];
}
