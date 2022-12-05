import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerSizedBoxLearn extends StatelessWidget {
  ContainerSizedBoxLearn({super.key});
  ProjectUtility utility = ProjectUtility();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 200,
            child: Text('AB' * 600),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 150, minWidth: 50),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            decoration: utility.decoration,
            child: Text('a' * 50),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  BoxDecoration decoration = const BoxDecoration(
      gradient: LinearGradient(colors: [Colors.greenAccent, Colors.blueGrey]),
      borderRadius: BorderRadius.all(Radius.circular(5)));
}
