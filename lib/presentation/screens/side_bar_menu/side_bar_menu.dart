import 'package:al_zakreen/presentation/resources/color_manager.dart';
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
          children: [
            buildMenuItems(context),
          ],
        ),
      );

  static Widget buildMenuItems(BuildContext context) => Container(
    color: ColorManager.primary,
    child: ListView(
      children: [
        Wrap(
          children:  [
            const Divider(
              color: ColorManager.primaryDark, endIndent: 40,indent: 40),
            ListTile(
              textColor: Colors.white,
              title:  const Center(child: Text('Prayer Times')),
              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PrayerTimesScreen())),
            ),
            ListTile(
              textColor: Colors.white,
              title:  const Center(child: Text('Azkar')),
              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AzkarScreen())),
            ),
            ListTile(
              textColor: Colors.white,
              title: const Center(child: Text('Name of Allah')),
              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NameOfAllahScreen())),
            ),
            ListTile(
              textColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 142.w),
              title: const Center(child: Text('El sabha')),
              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ElSabhaScreen())),
            ),
            ListTile(
              textColor: Colors.white,
              title: const Center(child: Text('El Nawaya')),
              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ElNwayaScreen())),
            ),
            const Divider(
              color: ColorManager.primaryDark,indent: 148,endIndent: 148,),
            ListTile(
              textColor: Colors.white,
              title: const Center(child: Text('Settings')),
              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsScreen())),
            ),
            ListTile(
              textColor: Colors.white,
              title: const Center(child: Text('About App')),
              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AboutAppScreen())),

            ),
          ],
        ),
      ],
    ),
  );
}
