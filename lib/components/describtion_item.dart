import 'package:flutter/material.dart';
import 'package:toku/models/my_model.dart';

class DescribtionItem extends StatelessWidget {
  MyModel myModel;
 
   DescribtionItem({super.key, required this.myModel });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  myModel.engName,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  myModel.jaName,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
             myModel.playSound();
            },
            icon: const Icon(Icons.play_arrow),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
