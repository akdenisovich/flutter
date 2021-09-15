
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          body: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => Page2());
          Navigator.push(context, route);
        },
        child: Text("Press button to enter the 2nd page",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: TextButton(
          onPressed: () {
            
            Navigator.pop(context);
          },
          child: Text("Return to the homepage",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
