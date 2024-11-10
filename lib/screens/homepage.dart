import 'package:flutter/material.dart';
import 'package:toku/components/itemCategory.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/familyMembers.dart';
import 'package:toku/screens/numbers.dart';
import 'package:toku/screens/pharses.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tuko',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      body: Column(
        children: [
          ItemTitel(
            color: Color(0xffF99531),
            title: 'Numbers',
            navigatTo: Numbers(),
          ),
          ItemTitel(
            color: Color(0xff528032),
            title: 'Family Members',
            navigatTo: FamilyMembers(),
          ),
          ItemTitel(
            color: Color(0xff7D40A2),
            title: 'Colors',
            navigatTo: ColorsPage(),
          ),
          ItemTitel(
            color: Color(0xff47A5CB),
            title: 'Pharses',
            navigatTo: PhrasesPage(),
          ),
        ],
      ),
    );
  }
}
