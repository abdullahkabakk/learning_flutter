import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Learn View'),
      ),
      body: Column(
        children: [
          Padding(
            padding: ProjectPadding().pagePadding,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}

class ProjectPadding {
  get pagePadding => const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      );
}
