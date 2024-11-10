import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/my_model.dart';

class FamilyCategory extends StatelessWidget {
  MyModel member;
   
  
  FamilyCategory( {required this.member});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff528032),
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF4DB),
              child: Image.asset(
                member.imgPath,
                height: 84,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Column(
              children: [
                Text(member.engName,style: TextStyle(color: Colors.white),),
                Text(member.jaName,style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed:() {
        final player = AudioPlayer();
        player.play(AssetSource(member.sound));
      },
            icon: Icon(Icons.play_arrow),color: Colors.white,
          )
        ],
      ),
    );
  }
}
