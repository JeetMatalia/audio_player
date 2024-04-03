import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerScreen extends StatelessWidget {
  final String audioUrl = "https://dict.youdao.com/dictvoice?audio=hobby&type=1";
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            playAudio();
          },
          child: Text('Play'),
        ),
      ),
    );
  }

  void playAudio() async {
    audioPlayer.play(AssetSource("dictvoice.mp3"));

  }
}