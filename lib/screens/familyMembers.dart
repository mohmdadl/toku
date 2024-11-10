import 'package:flutter/material.dart';
import 'package:toku/components/familyCategory.dart';
import 'package:toku/models/my_model.dart';

class FamilyMembers extends StatelessWidget {
  List<MyModel> members = [
    MyModel(
        engName: 'grandfather',
        imgPath: 'assets/images/family_members/family_grandfather.png',
        jaName: 'Ojĩsan',
        sound: 'sounds/family_members/grand father.wav'),
    MyModel(
        engName: 'grandmother',
        imgPath: 'assets/images/family_members/family_grandmother.png',
        jaName: 'Sobo',
        sound: 'sounds/family_members/grand mother.wav'),
    MyModel(
        engName: 'father',
        imgPath: 'assets/images/family_members/family_father.png',
        jaName: 'Chichioya',
        sound: 'sounds/family_members/father.wav'),
    MyModel(
        engName: 'mother',
        imgPath: 'assets/images/family_members/family_mother.png',
        jaName: 'Hahaoya',
        sound: 'sounds/family_members/mother.wav'),
    MyModel(
        engName: 'daughter',
        imgPath: 'assets/images/family_members/family_daughter.png',
        jaName: 'Musume',
        sound: 'sounds/family_members/daughter.wav'),
    MyModel(
        engName: 'son',
        imgPath: 'assets/images/family_members/family_son.png',
        jaName: 'Musuko',
        sound: 'sounds/family_members/son.wav'),
    MyModel(
        engName: 'older brother',
        imgPath: 'assets/images/family_members/family_older_brother.png',
        jaName: 'Nĩsan',
        sound: 'sounds/family_members/older bother.wav'),
    MyModel(
        engName: 'older sister',
        imgPath: 'assets/images/family_members/family_older_sister.png',
        jaName: 'Ane',
        sound: 'sounds/family_members/older sister.wav'),
    MyModel(
      engName: 'younger brother',
      imgPath: 'assets/images/family_members/family_younger_brother.png',
      jaName: 'Otōto',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    MyModel(
        engName: 'younger sister',
        imgPath: 'assets/images/family_members/family_younger_sister.png',
        jaName: 'Imōto',
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return FamilyCategory(
            member: members[index],
          );
        },
      ),
    );
  }
}
