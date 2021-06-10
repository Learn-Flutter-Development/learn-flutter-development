import 'package:audioplayers/audio_cache.dart';

void playSound(int soundNumber) {
  final AudioCache player = AudioCache();
  player.play('note$soundNumber.wav');
}
