import 'package:flutter/material.dart';

class ColumnRowView extends StatelessWidget {
  const ColumnRowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // expandedlar uzayabildigi kadar uzar
          // sadece row ve columnlarda kullanilir
          // flexler ekranin yuzde kacini kaplicagini soyler
          // toplaminin 10 olmasi gerekir
          Expanded(
            flex: 4,
            child: Container(color: Colors.green),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.red),
          ),
          Expanded(
            flex: 2,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('A1'),
                  Text('A2'),
                  Text('A3'),
                  Text('A4'),
                ]),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.purple),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.pink),
          ),
        ],
      ),
    );
  }
}
