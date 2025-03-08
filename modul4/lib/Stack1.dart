// INDRA GHANIY KUSUMA
// 2211102219

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: Scaffold(
        body: Center(
          // Memastikan Stack berada di tengah
          child: Stack(
            alignment: Alignment.center, // Menyusun widget di tengah
            children: <Widget>[
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.green),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
      ),
    ),
  );
}
