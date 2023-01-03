import 'package:flutter/material.dart';

class NameOfAllahScreen extends StatelessWidget {
  const NameOfAllahScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('Name Of Allah')),
        body: const Center(child: Text('NameOfAllahScreen')));
  }
}
