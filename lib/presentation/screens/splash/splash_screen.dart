import 'dart:async';
import 'package:al_zakreen/location_service.dart';
import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/presentation/screens/side_bar_menu/side_bar_menu.dart';
import 'package:al_zakreen/presentation/screens/side_bar_menu/category_menu_page.dart';
import 'package:al_zakreen/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

import '../home/backdrop.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   NavigationDrawer? _currentNavigationDrawer ;

  /*void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }*/

  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: 5), _goNext);
  }

  @override
  void initState() {
    super.initState();
    locationService();
    _startDelay();
  }

  Future<void> locationService() async {
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionLocation;
    LocationData locData;
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
    permissionLocation = await location.hasPermission();
    if (permissionLocation == PermissionStatus.denied) {
      permissionLocation = await location.requestPermission();
      if (permissionLocation != PermissionStatus.granted) {
        return;
      }
    }

    locData = await location.getLocation();
    setState(() {
      UserLocation.latNum = locData.latitude ?? 0;
      UserLocation.longNum = locData.longitude ?? 0;
    });
  }

  _goNext() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return  Backdrop(
        currentNavigationDrawer: _currentNavigationDrawer ?? NavigationDrawer.buildMenuItems(context),
        frontLayer: const HomeScreen(),
        backLayer: NavigationDrawer.buildMenuItems(context),
        frontTitle: const Text('SHRINE'),
        backTitle: const Text('MENU'),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset(ImageManager.splashLogo)),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
