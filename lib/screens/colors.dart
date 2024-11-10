import 'package:flutter/material.dart';
import 'package:toku/components/colorCategory.dart';
import 'package:toku/models/my_model.dart';


class ColorsPage extends StatelessWidget {
  List<MyModel> colors = [
    MyModel(
        engName: 'Black',
        imgPath: 'assets/images/colors/color_black.png',
        jaName: 'Burakku',
        sound: 'sounds/colors/black.wav'),
    MyModel(
        engName: 'Brown',
        imgPath: 'assets/images/colors/color_brown.png',
        jaName: 'Chairo',
        sound: 'sounds/colors/brown.wav'),
    MyModel(
        engName: 'Dusty Yellow',
        imgPath: 'assets/images/colors/color_dusty_yellow.png',
        jaName: 'Hokori ppoi kiiro',
        sound: 'sounds/colors/dusty yellow.wav'),
    MyModel(
        engName: 'Gray',
        imgPath: 'assets/images/colors/color_gray.png',
        jaName: 'Gurē',
        sound: 'sounds/colors/gray.wav'),
    MyModel(
        engName: 'Green',
        imgPath: 'assets/images/colors/color_green.png',
        jaName: 'Midori',
        sound: 'sounds/colors/green.wav'),
    MyModel(
        engName: 'Red',
        imgPath: 'assets/images/colors/color_red.png',
        jaName: 'Aka',
        sound: 'sounds/colors/red.wav'),
    MyModel(
        engName: 'White',
        imgPath: 'assets/images/colors/color_white.png',
        jaName: 'Shiroi',
        sound: 'sounds/colors/white.wav'),
    MyModel(
        engName: 'Yellow',
        imgPath: 'assets/images/colors/yellow.png',
        jaName: 'Kiiro',
        sound: 'sounds/colors/yellow.wav'),
 
  ];

  ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return colorCategory(colorModel: colors[index],);
        },
      ),
    );
  }
}
