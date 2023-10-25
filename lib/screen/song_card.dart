import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

import '../models/song_models.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    required this.song,
  }) : super(key: key);
  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(song.coverUrl), fit: BoxFit.cover)),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(song.title,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold)),
                    Text(song.description,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const Icon(
                  Icons.play_circle,
                  color: Colors.deepPurple,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
