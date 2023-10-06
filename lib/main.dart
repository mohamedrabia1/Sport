import 'package:flutter/material.dart';
import 'package:untitled1/provider/settings_provider.dart';
import 'package:untitled1/ui/screens/mental_health/mental_health.dart';
import 'package:untitled1/ui/screens/news/news.dart';
import 'package:untitled1/ui/screens/work_out/work_out.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (_) => SettingsProvider(),
          child: MyApp()));
}

class MyApp extends StatelessWidget {
  late SettingsProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return MaterialApp(
      routes: {
        MentalHealth.routeName: (_) => MentalHealth(),
        WorkOut.routeName: (_) => WorkOut(),
        News.routeName: (_) => News()
      },
      initialRoute: WorkOut.routeName,
    );
  }
}
