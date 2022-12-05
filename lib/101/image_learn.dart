import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Learn View'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 400,
            child: Image.asset(
              'assets/logo.png',
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
