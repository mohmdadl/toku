import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/my_model.dart';

class colorCategory extends StatelessWidget {
  MyModel colorModel;
   
  
  colorCategory( {super.key, required this.colorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff7D40A2),
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF4DB),
              child: Image.asset(
                colorModel.imgPath,
                height: 84,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Column(
              children: [
                Text(colorModel.engName,style: const TextStyle(color: Colors.white),),
                Text(colorModel.jaName,style: const TextStyle(color: Colors.white),),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed:() {
        final player = AudioPlayer();
        player.play(AssetSource(colorModel.sound));
      },
            icon: const Icon(Icons.play_arrow),color: Colors.white,
          )
        ],
      ),
    );
  }
}
