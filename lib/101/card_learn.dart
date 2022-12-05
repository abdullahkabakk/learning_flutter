// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Learn View'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: const [
                  _customCardView(title: 'Abdullah'),
                  _customCardView(title: 'Abdullah'),
                  _customCardView(title: 'Abdullah'),
                ],
              ),
              Column(
                children: const [
                  _customCardView(title: 'Abdullah'),
                  _customCardView(title: 'Abdullah'),
                  _customCardView(title: 'Abdullah'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: const [
                  _customCardView(title: 'Abdullah'),
                  _customCardView(title: 'Abdullah'),
                  _customCardView(title: 'Abdullah'),
                ],
              ),
              Column(
                children: const [
                  _customCardView(title: 'Abdullah'),
                  _customCardView(title: 'Abdullah'),
                  _customCardView(title: 'Abdullah'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _customCardView extends StatelessWidget {
  const _customCardView({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        height: 100,
        width: 188,
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
