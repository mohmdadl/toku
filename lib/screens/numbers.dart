import 'package:flutter/material.dart';
import 'package:toku/components/numberCategory.dart';
import 'package:toku/models/my_model.dart';


class Numbers extends StatelessWidget {
  List<MyModel> numbers = [
    MyModel(
        engName: 'One',
        imgPath: 'assets/images/numbers/number_one.png',
        jaName: 'Ichi',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    MyModel(
        engName: 'Two',
        imgPath: 'assets/images/numbers/number_two.png',
        jaName: 'Ni',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    MyModel(
        engName: 'Three',
        imgPath: 'assets/images/numbers/number_three.png',
        jaName: 'San',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    MyModel(
        engName: 'Four',
        imgPath: 'assets/images/numbers/number_four.png',
        jaName: 'Shi',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    MyModel(
        engName: 'Five',
        imgPath: 'assets/images/numbers/number_five.png',
        jaName: 'Go',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    MyModel(
        engName: 'Six',
        imgPath: 'assets/images/numbers/number_six.png',
        jaName: 'Roku',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    MyModel(
        engName: 'Seven',
        imgPath: 'assets/images/numbers/number_seven.png',
        jaName: 'Sebun',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    MyModel(
        engName: 'Eight',
        imgPath: 'assets/images/numbers/number_eight.png',
        jaName: 'Hachi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    MyModel(
      engName: 'Nine',
      imgPath: 'assets/images/numbers/number_nine.png',
      jaName: 'Kyŭ',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    MyModel(
        engName: 'Ten',
        imgPath: 'assets/images/numbers/number_ten.png',
        jaName: 'Jŭ',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberCategory(number: numbers[index]);
        },
      ),
    );
  }
}
