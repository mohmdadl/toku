import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toku/components/describtion_item.dart';
import 'package:toku/models/my_model.dart';

class MyCategory extends StatelessWidget {
  MyModel myModel;
  Color color;

  MyCategory({super.key, required this.myModel, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF4DB),
              child: Image.asset(
                myModel.imgPath!,
              )),
          DescribtionItem(myModel: myModel),
        ],
      ),
    );
  }
}
