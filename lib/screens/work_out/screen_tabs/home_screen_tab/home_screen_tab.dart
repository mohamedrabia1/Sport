import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/screens/work_out/screen_tabs/home_screen_tab/tab_view.dart';
import 'package:untitled1/ui/utils/app_assets.dart';
import 'package:badges/badges.dart' as badges;
import 'tab_view.dart';

import '../../../../provider/settings_provider.dart';

class HomeScreenTab extends StatefulWidget{
  @override
  State<HomeScreenTab> createState() => _HomeScreenTabState();
}

class _HomeScreenTabState extends State<HomeScreenTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 4,
        vsync: this
    );
    return Padding(
    padding:  EdgeInsets.all(32.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Row(
          children: [
            Image(image: AssetImage(AppAssets.main)),
            SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello Jade",style: TextStyle(fontSize: 16),),
                Text("Ready to workout?",style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold),),
              ],
            ),
            Spacer(),
            badges.Badge(
              badgeContent: Text('3'),
              child: Icon(Icons.notifications_none),
            )
          ],
        ),
        SizedBox(height: 22),
        Container(
          height: 80 ,
          width: 320,
          decoration: BoxDecoration(
            color: Color(0xffEAECF5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage(
                            AppAssets.heart
                        )),
                        SizedBox(width: 4,),
                        Text("Heart Rate",style: TextStyle(fontSize: 14),)
                      ],
                    ),
                    SizedBox(height: 6,),
                    Text("81 BPM",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: VerticalDivider(
                  color: Color(0xffD9D9D9),
                  thickness: 2,
                  width: 2,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu,color: Color(0xff717BBC),),
                        SizedBox(width: 4,),
                        Text("To-do",style: TextStyle(fontSize: 14),)
                      ],
                    ),
                    SizedBox(height: 6,),
                    Text("32,5 %",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: VerticalDivider(
                  color: Color(0xffD9D9D9),
                  thickness: 2,
                  width: 2,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_fire_department_outlined,color: Color(0xff717BBC),),
                        SizedBox(width: 4,),
                        Text("Calo",style: TextStyle(fontSize: 14),)
                      ],
                    ),
                    SizedBox(height: 6,),
                    Text("1000 cal",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ))
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 14,),
        Text("Workout Programs",style: TextStyle(color: Colors.black,
            fontSize: 20,fontWeight: FontWeight.w600)),
        SizedBox(height: 10),
        TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text:  "All Type",),
              Tab(text:  "Full Body",),
              Tab(text:  "Upper",),
              Tab(text:  "Lower",),
            ]
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
                controller: _tabController,
                children: [ListView.separated(
                    itemBuilder:(context, index)=> TabView(),
                    separatorBuilder: (context , index) => Divider(),
                    itemCount: 1),
              Text("Full Body"),
                  Text("Upper"),
                  Text("Lower"),
        ],
            ),
            ),
          ),
      ],
    ),
    );
  }
}
