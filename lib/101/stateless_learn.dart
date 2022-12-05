import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Learn View"),
      ),
      body: Column(
        children: [
          _TextTitleWidget(title: 'Abdullah'),
          _TextTitleWidget(title: 'Abdullah'),
          _TextTitleWidget(title: 'Abdullah'),
          _TextTitleWidget(title: 'Abdullah'),
          _TextTitleWidget(title: 'Abdullah'),
          _TextTitleWidget(title: 'Abdullah'),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class _TextTitleWidget extends StatelessWidget {
  _TextTitleWidget({required this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
