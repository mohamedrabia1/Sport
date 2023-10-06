import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/settings_provider.dart';
import '../../../screens/news/chat_tab/chat_tab.dart';
import '../../../screens/news/insights_tab/insights_tab.dart';
import '../../../screens/news/today_tab/today_tab.dart';
import '../../utils/app_assets.dart';

class News extends StatefulWidget {
  static const String routeName = "news";

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    TodayTab(),
    InsightsTab(),
    ChatTab(),

  ];
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    return  Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        selectedItemColor: Color(0xff6941C6),
        unselectedItemColor: Color(0xff667085),
        selectedIconTheme: IconThemeData(size: 32),
        selectedFontSize: 14,
        currentIndex: currentTabIndex,

        onTap: (index){
          currentTabIndex = index;
          provider.setCurrentIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icClander)),label: "Today" ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.ic_grid)),label: "Insights"),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppAssets.ic_chat)),label: "Chat" ),
        ],
      ),

    );
  }
}
