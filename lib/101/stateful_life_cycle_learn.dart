import 'package:flutter/material.dart';

class StateFulLifeCycleLearn extends StatefulWidget {
  const StateFulLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StateFulLifeCycleLearn> createState() => _StateFulLifeCycleLearnState();
}

class _StateFulLifeCycleLearnState extends State<StateFulLifeCycleLearn> {
  String _message = "";
  late final _isEven;
  @override
  void initState() {
    // initState bittikten sonra build cagirilir.
    super.initState();
    _message = widget.message;
    _isEven = widget.message.length.isEven;
    _isEven ? _message += " Cift" : _message += " Tek";
  }

  @override
  void didChangeDependencies() {
    // initState'den sonra, buildden once calisir. pek önerilmez.
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StateFulLifeCycleLearn oldWidget) {
    // ust siniftan degisiklik oldugunda cagirilir.
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // sayfanin öldüğü an çağırılır
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isEven ? Text("Cift") : Text("Tek"),
      ),
      body: _isEven
          ? ElevatedButton(
              onPressed: () {},
              child: Text(_message),
            )
          : TextButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
