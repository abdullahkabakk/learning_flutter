import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("My Card"),
              subtitle: Text("How do you use your card"),
              leading: Icon(Icons.money),
              trailing: Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
    );
  }
}
