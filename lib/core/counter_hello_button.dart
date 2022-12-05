import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _visitor = 0;
  final String _welcomeTitle = "Merhaba";

  void _updateCounter() {
    setState(() {
      ++_visitor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _updateCounter,
        child: Text(
          "$_welcomeTitle ${_visitor.toString()}",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
