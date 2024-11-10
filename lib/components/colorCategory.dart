import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/my_model.dart';

class colorCategory extends StatelessWidget {
  MyModel colorModel;
   
  
  colorCategory( {required this.colorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff7D40A2),
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF4DB),
              child: Image.asset(
                colorModel.imgPath,
                height: 84,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Column(
              children: [
                Text(colorModel.engName,style: TextStyle(color: Colors.white),),
                Text(colorModel.jaName,style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed:() {
        final player = AudioPlayer();
        player.play(AssetSource(colorModel.sound));
      },
            icon: Icon(Icons.play_arrow),color: Colors.white,
          )
        ],
      ),
    );
  }
}
