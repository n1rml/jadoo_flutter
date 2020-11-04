import 'package:flutter/material.dart';
import 'batun.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calling Jadoo',
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  AudioCache _audioCache;

  void _btnpress(String audioFile, String whichBatun) {
    _audioCache.play(audioFile);
    _lastBatun = whichBatun;
    scoreGen();
    print(_tScore);
  }

  void scoreGen() {
    if (_tScore == 0 && _lastBatun == 'B')
      _tScore++;
    else if (_tScore == 1 && _lastBatun == 'C')
      _tScore++;
    else if (_tScore == 2 && _lastBatun == 'F')
      _tScore++;
    else if (_tScore == 3 && _lastBatun == 'E')
      _tScore++;
    else if (_tScore == 4 && _lastBatun == 'B')
      _tScore++;
    else if (_tScore == 5 && _lastBatun == 'C')
      _tScore++;
    else if (_tScore == 6 && _lastBatun == 'E')
      _tScore++;
    else if (_tScore == 7 && _lastBatun == 'D')
      _tScore++;
    else if (_tScore == 8 && _lastBatun == 'B')
      _tScore++;
    else if (_tScore == 9 && _lastBatun == 'C')
      _tScore++;
    else if (_tScore == 10 && _lastBatun == 'F')
      _tScore++;
    else if (_tScore == 11 && _lastBatun == 'E')
      _tScore++;
    else if (_tScore == 12 && _lastBatun == 'D')
      _tScore++;
    else if (_tScore == 13 && _lastBatun == 'E')
      _tScore++;
    else
      _tScore = 0;

    if (_tScore == 14)
      setState(() {
        _myState = 1;
      });
    else
      setState(() {
        _myState = 0;
      });
  }

  var _tScore = 0;
  var _lastBatun = 'O';
  var _myState = 0;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(
        prefix: "assets/audio/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'Jadoo -inator',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   toolbarHeight: 40,
      //   backgroundColor: Colors.green,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _myState == 1
                ? Text(
                    'Jaadoo!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  )
                : Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Batun('A', () => _btnpress('b.mp3', 'A')),
                Batun('B', () => _btnpress('b.mp3', 'B')),
                Batun('C', () => _btnpress('c.mp3', 'C')),
                Batun('D', () => _btnpress('d.mp3', 'D')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Batun('E', () => _btnpress('e.mp3', 'E')),
                Batun('F', () => _btnpress('f.mp3', 'F')),
                Batun('G', () => _btnpress('b.mp3', 'G')),
                Batun('H', () => _btnpress('b.mp3', 'H')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
