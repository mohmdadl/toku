import 'package:flutter/material.dart';
import 'package:toku/screens/numbers.dart';

class ItemTitel extends StatelessWidget {
  String title;
  Color color;
  Widget navigatTo;
  ItemTitel({super.key, required this.color, required this.navigatTo, required this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => navigatTo));
            },
      child: Container(
        color: color,
        alignment: Alignment.centerLeft,
        height: 75,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
