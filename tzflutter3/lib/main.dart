import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _initialValue = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              height: _initialValue ? 150 : 300,
              width: _initialValue ? 150 : 300,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),
            OutlinedButton(
                child: const Text('Поменять размер'),
                onPressed: () {
                  setState(() {
                    _initialValue = !_initialValue;
                  });
                },
              ),
          ],
        )),
      ),
    );
  }
}
