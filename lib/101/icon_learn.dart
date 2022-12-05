import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconColors _colors = IconColors();
  final IconSizes _sizes = IconSizes();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Learn View'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.access_alarm_outlined,
              size: _sizes.iconSmall,
              color: _colors.froly,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.access_alarm_outlined,
              size: _sizes.iconSmall,
              // tema koyu oldugunda gri, acik oldugunda mavi olur
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = const Color(0xffED167A);
}
