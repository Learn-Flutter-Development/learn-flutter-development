import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void playSound(int soundNumber) {
  final AudioCache player = AudioCache();
  player.play('note$soundNumber.wav');
}

void routeFunction(BuildContext context, String route) {
  Navigator.pushNamed(context, route);
}
