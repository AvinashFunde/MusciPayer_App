import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(AudioPlayerApp());
}

class AudioPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}

class AudioPlayerPage extends StatefulWidget {
  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;

   play() async {
    bool isLocal=true;
    void result = await audioPlayer.play(
     AssetSource('assets/songs/Arjan Vailly - ANIMAL.mp3'),
      

    );

      setState(() {
        isPlaying = true;
      });

  }

  pause() {
    audioPlayer.pause();
    setState(() {
      isPlaying = false;
    });
  }

   stop() {
    audioPlayer.stop();
    setState(() {
      isPlaying = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isPlaying ? 'Playing' : 'Paused',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => play(),
                  icon: Icon(Icons.play_arrow),
                ),
                IconButton(
                  onPressed: () => pause(),
                  icon: Icon(Icons.pause),
                ),
                IconButton(
                  onPressed: () => stop(),
                  icon: Icon(Icons.stop),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
