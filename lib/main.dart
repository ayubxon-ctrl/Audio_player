import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/playlist_screen.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

import 'package:flutter_application_1/screen/song_screen.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/song', page: () => const SongScreen()),
        GetPage(name: '/playlist', page: () => const PlaylistScreen()),
      ],
    );
  }
}
