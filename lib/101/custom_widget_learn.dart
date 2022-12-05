import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({
    super.key,
  });
  final String _title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget View'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: _CustomFoodButton(
                  title: _title,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: _CustomFoodButton(
                title: _title,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _CustomFoodButton extends StatelessWidget with _ColorUtility {
  _CustomFoodButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style:
            Theme.of(context).textTheme.headline5?.copyWith(color: whiteColor),
      ),
    );
  }
}
