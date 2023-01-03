import 'package:flutter/material.dart';

class PrayerTimesScreen extends StatelessWidget {
  const PrayerTimesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Prayer Times')),
      body: const Center(child: Text('PrayerTimesScreen')));
  }
}
