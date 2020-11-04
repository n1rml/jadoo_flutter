import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import 'batun.dart';

class KeyB extends StatelessWidget {
  final AudioCache _audioCache = AudioCache(
      prefix: "assets/audio/",
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));

  final lastButton = 'O';

  void _btnpress(String audioFile) {
    _audioCache.play(audioFile);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Batun('A', () => _btnpress('b.mp3')),
                Batun('B', () => _btnpress('b.mp3')),
                Batun('C', () => _btnpress('c.mp3')),
                Batun('D', () => _btnpress('d.mp3')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Batun('E', () => _btnpress('e.mp3')),
                Batun('F', () => _btnpress('f.mp3')),
                Batun('G', () => _btnpress('b.mp3')),
                Batun('H', () => _btnpress('b.mp3')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
