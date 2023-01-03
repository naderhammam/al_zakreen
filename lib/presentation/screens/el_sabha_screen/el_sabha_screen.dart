import 'package:flutter/material.dart';

class ElSabhaScreen extends StatelessWidget {
  const ElSabhaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('ElSabha')),
        body: const Center(child: Text('ElSabhaScreen')));
  }
}
