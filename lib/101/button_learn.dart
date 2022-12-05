import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) {
              // eger butona basilmissa, arkaplan rengi yesil olur.
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              // basilmamissa gri olur.
              return Colors.grey;
            })),
            child: const Text('Button'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Button 2'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc_outlined),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('araogra'),
          ),
        ],
      ),
    );
  }
}
