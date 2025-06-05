// INDRA GHANIY KUSUMA
// 2211102219

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Row Example")),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              FlutterLogo(size: 50),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Flutter's hot reload helps you quickly and easily experiment, build UIs, "
                  "add features, and fix bugs faster. Experience sub-second reload times, "
                  "without losing state, on emulators, simulators, and hardware for iOS and Android.",
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.sentiment_very_satisfied, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
