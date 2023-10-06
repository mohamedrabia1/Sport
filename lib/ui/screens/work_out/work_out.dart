import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/ui/utils/app_assets.dart';
import 'package:badges/badges.dart' as badges;

import '../../../provider/settings_provider.dart';
import '../../../screens/work_out/screen_tabs/activities_screen_tab/activities_screen_tab.dart';
import '../../../screens/work_out/screen_tabs/home_screen_tab/home_screen_tab.dart';
import '../../../screens/work_out/screen_tabs/location_screen_tab/location_screen_tab.dart';
import '../../../screens/work_out/screen_tabs/profile_screen_tab/profile_screen_tab.dart';


class WorkOut extends StatefulWidget {
  static const String routeName = "work_out";

  @override
  State<WorkOut> createState() => _WorkOutState();
}

class _WorkOutState extends State<WorkOut> {
  int currentTabIndex = 0;
  List<Widget> tabsScreen = [
    HomeScreenTab(),
    LocationScreenTab(),
    ActivitiesScreenTab(),
    ProfileScreenTab(),
  ];
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    return Scaffold(
      body : tabsScreen[currentTabIndex],
       bottomNavigationBar:
       BottomNavigationBar(
         selectedItemColor: Color(0xff363F72),
         unselectedItemColor: Color(0xff667085),
        selectedIconTheme: IconThemeData(size: 32),
         currentIndex: currentTabIndex,
        onTap: (index){
           currentTabIndex = index;
           provider.setCurrentIndex(index);
         },
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icHome)),label: "" ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.ic_location)),label: ""),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppAssets.ic_activities)),label: "" ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icPerson)),label:""),
        ],
       ),
    );
  }
}
