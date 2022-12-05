import 'package:flutter/material.dart';
import 'package:learning_flutter/core/counter_hello_button.dart';
import 'package:learning_flutter/product/language/language_items.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _counter = 0;
  int _visitor = 0;

  void _updateCounter(bool isIncrement) {
    setState(() {
      isIncrement ? _counter++ : _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementMethod(),
          _deIncrementMethod(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementMethod() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _deIncrementMethod() {
    return Padding(
      padding: EdgeInsets.only(left: ProjectPadding().paddingLeft),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}

class ProjectPadding {
  double get paddingLeft => 10.0;
}
