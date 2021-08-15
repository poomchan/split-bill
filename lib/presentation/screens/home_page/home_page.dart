import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:split_bill/presentation/elements/my_button.dart';
import 'package:split_bill/presentation/screens/home_page/elements/items_table.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text('Split Bill'),
        leading: NeumorphicButton(
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.circle(),
          ),
          child: Icon(
            Icons.camera,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {},
        ),
        actions: [
          NeumorphicButton(
            style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: Icon(
              Icons.menu,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Neumorphic(
          margin: EdgeInsets.all(10),
          style: NeumorphicStyle(
            depth: -100,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(40),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ItemTable(),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: NeumorphicFloatingActionButton(
      //   style: NeumorphicStyle(
      //     boxShape: NeumorphicBoxShape.roundRect(
      //       BorderRadius.circular(200),
      //     ),
      //   ),
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
    );
  }
}