import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModal> _items;
  PaddingUtility _utility = PaddingUtility();
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: _utility.paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CollectionCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  _CollectionCard({
    Key? key,
    required CollectionModal model,
  })  : _model = model,
        super(key: key);

  final CollectionModal _model;
  PaddingUtility _utility = PaddingUtility();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: _utility.paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: _utility.paddingAll,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath)),
              Padding(
                padding: _utility.paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.title} eth'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModal {
  final String imagePath;
  final String title;
  final double price;

  CollectionModal(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final paddingBottom = EdgeInsets.only(bottom: 20);
  final paddingAll = EdgeInsets.all(20);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20.0);
}

class CollectionItems {
  late List<CollectionModal> items;
  CollectionItems() {
    items = [
      CollectionModal(
          imagePath: 'assets/logo.png', title: "Abstract Art", price: 3.4),
      CollectionModal(
          imagePath: 'assets/logo.png', title: "Abstract Art", price: 3.4),
      CollectionModal(
          imagePath: 'assets/logo.png', title: "Abstract Art", price: 3.4),
      CollectionModal(
          imagePath: 'assets/logo.png', title: "Abstract Art", price: 3.4)
    ];
  }
}
