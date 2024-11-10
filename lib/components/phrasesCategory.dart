import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/my_model.dart';



class PhrasesCategory extends StatelessWidget {
  PhrasesModel phrasesModel;
   
  
  PhrasesCategory( {super.key, required this.phrasesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      color: const Color(0xff47A5CB),
      child: Row(
        children: [
         
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(phrasesModel.engName,style: const TextStyle(color: Colors.white),),
                Text(phrasesModel.jaName,style: const TextStyle(color: Colors.white),),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed:() {
        final player = AudioPlayer();
        player.play(AssetSource(phrasesModel.sound));
      },
            icon: const Icon(Icons.play_arrow),color: Colors.white,
          )
        ],
      ),
      
    );
  }
}
