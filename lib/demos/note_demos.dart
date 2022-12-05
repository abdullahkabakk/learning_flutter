import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemosView extends StatelessWidget {
  NoteDemosView({super.key});
  final PaddingItems _paddingItems = PaddingItems();
  @override
  Widget build(BuildContext context) {
    var _title = 'Create your first note';
    var _description = 'Add a note ' * 8;
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: _paddingItems.horizontalPadding,
        child: Column(
          children: [
            Image.asset('assets/logo.png'),
            _TitleWidget(title: _title),
            Padding(
              padding: _paddingItems.verticalPadding,
              child: _SubtitleWidget(title: _description),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                child: Text('Create a note',
                    style: Theme.of(context).textTheme.subtitle2),
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('Import notes')),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  _SubtitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  TextAlign textAlign;
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style:
          Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 15);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 15);
}
