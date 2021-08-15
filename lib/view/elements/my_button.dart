import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }
}
