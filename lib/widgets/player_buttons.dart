import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayerButton extends StatelessWidget {
  const PlayerButton({
    super.key,
    required this.audioplayer,
  });

  final AudioPlayer audioplayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StreamBuilder<SequenceState?>(
          stream: audioplayer.sequenceStateStream,
          builder: (context, index) {
            return IconButton(
              onPressed:
                  audioplayer.hasPrevious ? audioplayer.seekToPrevious : null,
              icon: const Icon(
                Icons.skip_previous,
                color: Colors.white,
              ),
              iconSize: 50,
            );
          },
        ),
        StreamBuilder<PlayerState>(
            stream: audioplayer.playerStateStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final playerState = snapshot.data;
                final processingState = playerState!.processingState;

                if (processingState == ProcessingState.loading ||
                    processingState == ProcessingState.buffering) {
                  return Container(
                    width: 64.0,
                    height: 64.0,
                    margin: const EdgeInsets.all(10.0),
                    child: CircularProgressIndicator(),
                  );
                } else if (!audioplayer.playing) {
                  return IconButton(
                    onPressed: audioplayer.play,
                    icon: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                    ),
                    iconSize: 75,
                  );
                } else if (processingState != ProcessingState.completed) {
                  return IconButton(
                    onPressed: audioplayer.pause,
                    icon: Icon(
                      Icons.pause_circle,
                      color: Colors.white,
                    ),
                    iconSize: 75,
                  );
                } else {
                  return IconButton(
                    onPressed: () => audioplayer.seek(Duration.zero,
                        index: audioplayer.effectiveIndices!.first),
                    icon: Icon(Icons.replay_circle_filled_outlined),
                    color: Colors.white,
                  );
                }
              } else {
                return CircularProgressIndicator();
              }
            }),
        StreamBuilder<SequenceState?>(
          stream: audioplayer.sequenceStateStream,
          builder: (context, index) {
            return IconButton(
              onPressed: audioplayer.hasNext ? audioplayer.seekToNext : null,
              icon: const Icon(
                Icons.skip_next,
                color: Colors.white,
              ),
              iconSize: 50,
            );
          },
        ),
      ],
    );
  }
}
