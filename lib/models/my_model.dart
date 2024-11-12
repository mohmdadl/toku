import 'package:audioplayers/audioplayers.dart';

class MyModel {
  String? imgPath;
  String engName;
  String jaName;
  String sound;
  MyModel({
    this.imgPath,
    required this.engName,
    required this.jaName,
    required this.sound,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
