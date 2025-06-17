import 'package:flutter/material.dart';

void main() => runApp(InnerBloomApp());

class InnerBloomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InnerBloom',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('InnerBloom')),
        body: Center(child: Text('Welcome to InnerBloom!')),
      ),
    );
  }
}
