import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String name = 'abdullah';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          ('Buy the best one $name ' * 10),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            wordSpacing: 2,
            letterSpacing: 2,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
