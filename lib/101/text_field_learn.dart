import 'package:flutter/material.dart';
import 'package:learning_flutter/product/language/language_items.dart';

class TextFieldView extends StatefulWidget {
  const TextFieldView({super.key});

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: TextInputDecorator().emailDecorator,
            buildCounter: ((context,
                {required currentLength, required isFocused, maxLength}) {
              return _AnimatedContainer(currentLength);
            }),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  AnimatedContainer _AnimatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.blueAccent,
    );
  }
}

class TextInputDecorator {
  InputDecoration emailDecorator = InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
