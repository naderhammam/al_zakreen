import 'package:flutter/material.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('Azkar')),
        body: const Center(child: Text('AzkarScreen')));
  }
}
