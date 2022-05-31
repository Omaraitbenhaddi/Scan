import 'package:bar_code/comp/Scan.dart';
import 'package:bar_code/comp/affProduit.dart';
import 'package:bar_code/comp/getproduct.dart';
import 'package:flutter/material.dart';

import 'comp/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMARTSCAN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScanScreen(),
    );
  }
}
