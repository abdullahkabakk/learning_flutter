import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.intialColor});
  final Color? intialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  final _colors = [Colors.red, Colors.green, Colors.blue];
  int _value = 0;
  late Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.intialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.intialColor != _backgroundColor && widget.intialColor != null) {
      _changeBackgroundColor(widget.intialColor ?? Colors.teal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _value = value;
              _changeBackgroundColor(_colors[_value]);
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: _ColorContainer(containerColor: Colors.red),
              label: 'Red',
            ),
            BottomNavigationBarItem(
              icon: _ColorContainer(containerColor: Colors.green),
              label: 'Green',
            ),
            BottomNavigationBarItem(
              icon: _ColorContainer(containerColor: Colors.blue),
              label: 'Blue',
            ),
          ]),
    );
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.containerColor,
  }) : super(key: key);

  final containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
