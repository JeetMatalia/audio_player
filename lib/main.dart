import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart' as audioplayers;
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudioPlayerPage(),
    );
  }
}

class AudioPlayerPage extends StatefulWidget {
  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  audioplayers.AudioPlayer audioPlayer = audioplayers.AudioPlayer();
  String audioUrl = 'https://dict.youdao.com/dictvoice?audio=hobby&type=1';
  AudioPlayer justAudioPlayer = AudioPlayer();

  void playAudio() async {
    await justAudioPlayer.setUrl(audioUrl);
    await justAudioPlayer.play();
  }

  @override
  void dispose() {
    justAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: playAudio,
          child: Text('Play Audio'),
        ),
      ),
    );
  }
}
