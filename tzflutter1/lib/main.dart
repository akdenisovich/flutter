import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  final List<int> items = List<int>.generate(10, (index) => index);
  return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(items[index].toString()),
            ),
            Divider()
          ],
        );
      });
}
