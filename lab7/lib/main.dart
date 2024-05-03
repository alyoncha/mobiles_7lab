//import 'dart:html';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главное окно')),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Открыть второе окно'))),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Второе окно')),
      body: Center(
        child: Column(children: <Widget>[
          const SizedBox(height: 250.0),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Да',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.black,
                  ),
                );
              },
              child: const Text('Да')),
          const SizedBox(height: 20.0),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Нет',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.black,
                  ),
                );
              },
              child: const Text('Нет')),
        ]),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (BuildContext context) => const MainScreen(),
    '/second': (BuildContext context) => const SecondScreen()
  })); // MaterialApp
}
