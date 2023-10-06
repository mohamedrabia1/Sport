import 'package:flutter/material.dart';
import 'package:untitled1/screens/news/insights_tab/tab_view_screen.dart';

import '../../../ui/utils/app_assets.dart';

class InsightsTab extends StatefulWidget {

  @override
  State<InsightsTab> createState() => _InsightsTabState();
}

class _InsightsTabState extends State<InsightsTab> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4,
        vsync: this
    );
    return Padding(
      padding: EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(AppAssets.flower)),
              SizedBox(width: 10),
              Text("AliceCare",style: TextStyle(color: Colors.black,fontSize: 32)),
              Spacer(),
            ],
          ),
          SizedBox(height: 18),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff667085)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Articles, Video, Audio and More,...' ,
                    hintStyle: TextStyle(color: Color(0xff667085),fontSize: 18)
                )
            ),
          ),
          SizedBox(height: 14),
          Row(
            children: [
              Text("Hot topics",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
              Spacer(),
              Text("See all",style: TextStyle(color: Color(0xff5925DC),
                  fontSize: 16,fontWeight: FontWeight.w500)),
              Icon(Icons.keyboard_arrow_right,color: Color(0xff5925DC))
            ],
          ),
          SizedBox(height: 24),
          TabBar(

              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text:  "Discover",),
                Tab(text:  "News",),
                Tab(text:  "Most Viewed",),
                Tab(text:  "Saved",),
              ]
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBarView(
                controller: _tabController,
                children: [ListView.separated(
                    itemBuilder:(context, index)=> TabViewScreen(),
                    separatorBuilder: (context , index) => Divider(),
                    itemCount: 1),
                  Text("News"),
                  Text("Most Viewed"),
                  Text("Saved"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
