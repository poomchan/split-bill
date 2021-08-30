import 'package:flutter/material.dart';

class PeopleList extends StatelessWidget {
  PeopleList({
    Key? key,
    this.peopleAvatarList = const [],
  }) : super(key: key);

  final List<CircleAvatar> peopleAvatarList;

  List<Widget> _buildStackChildren() {
    List<Widget> stackChildren = [];
    for (int i = 0; i <= peopleAvatarList.length - 1; i++) {
      final avatar = peopleAvatarList[i];
      final child = Positioned(
        right: 12 * i.toDouble(),
        child: avatar,
      );
      stackChildren.add(child);
      print('added!' + '${stackChildren.length}');
    }
    // print(stackChildren.length);
    return stackChildren;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 300,
      child: Stack(
        children: _buildStackChildren(),
      ),
    );
  }
}
