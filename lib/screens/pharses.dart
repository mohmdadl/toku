import 'package:flutter/material.dart';
import 'package:toku/components/describtion_item.dart';
import 'package:toku/models/my_model.dart';

class PhrasesPage extends StatelessWidget {
  List<MyModel> phrases = [
    MyModel(
        engName: 'are you coming ?',
        jaName: 'Kimasu ka?',
        sound: 'sounds/phrases/are_you_coming.wav'),
    MyModel(
        engName: 'dont forget to subscribe',
        jaName: 'Kōdoku o wasurenaide kudasai',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    MyModel(
        engName: 'how are you feeling ?',
        jaName: 'Go kibun wa ikagadesu ka?',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    MyModel(
        engName: 'i love anime',
        jaName: 'Watashi wa anime ga daisukidesu',
        sound: 'sounds/phrases/i_love_anime.wav'),
    MyModel(
        engName: 'i love programming',
        jaName: 'Watashi wa puroguramingu ga daisukidesu',
        sound: 'sounds/phrases/i_love_programming.wav'),
    MyModel(
        engName: 'what is your name ?',
        jaName: 'Namae wa nandesuka?',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    MyModel(
        engName: 'where are you going ?',
        jaName: 'Doko ni iku no?',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    MyModel(
        engName: 'yes im coming',
        jaName: 'Hai, watashi wa kite imasu ',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return Container(
                color: const Color(0xff47A5CB),
      height: 84,
            child: DescribtionItem(
              myModel: phrases[index],
            ),
          );
        },
      ),
    );
  }
}
