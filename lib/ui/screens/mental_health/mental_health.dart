import 'package:flutter/material.dart';
import 'package:untitled1/ui/utils/app_assets.dart';
import 'package:untitled1/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart';

import '../../../screens/mental_health/tabs/clander_tab/clander_tab.dart';
import '../../../screens/mental_health/tabs/home_tab/home_tab.dart';
import '../../../screens/mental_health/tabs/menu_tab/menu_tab.dart';
import '../../../screens/mental_health/tabs/profile_tab/profile_tab.dart';




class MentalHealth extends StatefulWidget {
  static const String routeName = "mental_health";

  @override
  State<MentalHealth> createState() => _MentalHealthState();
}

class _MentalHealthState extends State<MentalHealth> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    HomeTab(),
    MenuTab(),
    ClanderTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    return
       Scaffold(
        body : tabs[currentTabIndex],
        bottomNavigationBar:
        BottomNavigationBar(
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Color(0xff667085),
          selectedIconTheme: IconThemeData(size: 32),
          currentIndex: currentTabIndex,
          onTap: (index){
            currentTabIndex = index;
            provider.setCurrentIndex(index);
          },
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icHome)),label: "" ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icMenu)),label: ""),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppAssets.icClander)),label: "" ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icPerson)),label:""),
          ],
        ),

      );
  }

}

