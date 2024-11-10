import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/my_model.dart';

class NumberCategory extends StatelessWidget {
  MyModel number;
   
  
  NumberCategory( {required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF99531),
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF4DB),
              child: Image.asset(
                number.imgPath,
                height: 84,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Column(
              children: [
                Text(number.engName,style: TextStyle(color: Colors.white),),
                Text(number.jaName,style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed:() {
        final player = AudioPlayer();
        player.play(AssetSource(number.sound));
      },
            icon: Icon(Icons.play_arrow),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
