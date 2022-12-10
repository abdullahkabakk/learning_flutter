import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View Learn',
        ),
      ),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          Divider(),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                ),
                Container(
                  color: Colors.pink,
                  width: 100,
                ),
                Container(
                  color: Colors.purple,
                  width: 100,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
            ),
          ),
        ],
      ),
    );
  }
}
