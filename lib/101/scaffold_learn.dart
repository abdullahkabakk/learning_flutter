import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scaffold sample")),
      body: const Text("aha"),
      backgroundColor: Colors.blue,
      drawer: Drawer(
        semanticLabel: "'AAA",
        child: Column(children: const [
          Text('a'),
          Text('b'),
          Text('c'),
          Text('d'),
          Text('e'),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
        fixedColor: Colors.deepPurple,
        backgroundColor: Colors.pink,
      ),
    );
  }
}
