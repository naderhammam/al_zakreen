import 'package:al_zakreen/presentation/screens/about_app/About_app.dart';
import 'package:al_zakreen/presentation/screens/azkar_screen/azkar_screen.dart';
import 'package:al_zakreen/presentation/screens/el_nawaya_screen/el_nwaya_screen.dart';
import 'package:al_zakreen/presentation/screens/el_sabha_screen/el_sabha_screen.dart';
import 'package:al_zakreen/presentation/screens/name_of_allah_screen/name_of_allah_screen.dart';
import 'package:al_zakreen/presentation/screens/prayer_times_screen/prayer_times_screen.dart';
import 'package:al_zakreen/presentation/screens/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) => Drawer(
        child: Column(
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      );

  Widget buildHeader(BuildContext context) => Container();
  static Widget buildMenuItems(BuildContext context) => Wrap(
    runSpacing: 34.h,
    children:  [
      ListTile(
        title: const Text('Prayer Times'),
        onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PrayerTimesScreen())),
      ),
      const Divider(color: Colors.black,),
      ListTile(
        title: const Text('Azkar'),
        onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AzkarScreen())),
      ),
      ListTile(
        title: const Text('Name of Allah'),
        onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NameOfAllahScreen())),
      ),
      ListTile(
        title: const Text('El sabha'),
        onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ElSabhaScreen())),
      ),
      ListTile(
        title: const Text('El Nawaya'),
        onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ElNwayaScreen())),
      ),
      ListTile(
        title: const Text('Settings'),
        onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsScreen())),
      ),
      ListTile(
        title: const Text('About App'),
        onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AboutAppScreen())),

      ),
    ],
  );
}
