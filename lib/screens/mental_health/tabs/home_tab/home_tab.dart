import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../ui/utils/app_assets.dart';

class HomeTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(AppAssets.icMain)),
                SizedBox(width: 10),
                Text("Mody",style: TextStyle(color: Colors.black,fontSize: 32)),
                Spacer(),
                badges.Badge(
                  badgeContent: Text('3'),
                  child: Icon(Icons.notifications_none),
                )
              ],
            ),
            SizedBox(height: 22),
            Row(
              children: [
                Text("Hello, ",style: TextStyle(color: Colors.black,fontSize: 26)),
                Text("Sara Rose",style: TextStyle(color: Colors.black,
                    fontSize: 26,fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            Text("How are you feeling today",style: TextStyle(color: Colors.black,fontSize: 20)),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Image(image: AssetImage(AppAssets.lov))),
                Expanded(child: Image(image: AssetImage(AppAssets.cool))),
                Expanded(child: Image(image: AssetImage(AppAssets.happy))),
                Expanded(child: Image(image: AssetImage(AppAssets.sad))),
              ],
            ),
            SizedBox(height: 26),
            Row(
              children: [
                Text("Feature",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
                Spacer(),
                Text("See more",style: TextStyle(color: Color(0xff027A48),fontSize: 16)),
                Icon(Icons.keyboard_arrow_right,color: Color(0xff027A48))
              ],
            ),
            SizedBox(height: 12),

            CarouselSlider(
              options: CarouselOptions(
                  height: 150,
                  reverse: false,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
               scrollDirection: Axis.horizontal,
              ),
              items: [1,2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return  Container(
                      width: MediaQuery.of(context).size.width* 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffECFDF3)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Positive vibes",style: TextStyle(
                                    fontSize: 16
                                )),
                                SizedBox(height: 6),
                                Text("Boost your mood with positive vibes"
                                    ,style: TextStyle(
                                        fontSize: 16
                                    )),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    Image(image: AssetImage(AppAssets.icAudio)),
                                    SizedBox(width: 6),
                                    Text("10 mins",style: TextStyle(
                                        fontSize: 16
                                    ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(child: Image(image: AssetImage(AppAssets.walkingTheDog)))
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              children: [
                Text("Exercise",style: TextStyle(color: Colors.black,fontSize: 20
                    ,fontWeight: FontWeight.w600)),
                Spacer(),
                Text("See more",style: TextStyle(color: Color(0xff027A48),fontSize: 16)),
                Icon(Icons.keyboard_arrow_right,color: Color(0xff027A48))
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                        color: Color(0xffF9F5FF)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage(AppAssets.icRelax)),
                        SizedBox(width: 4),
                        Text("Relaxation",style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffFDF2FA)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage(AppAssets.icMid)),
                        SizedBox(width: 4),
                        Text("Meditation",style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffFFFAF5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage(AppAssets.icBeathing)),
                        SizedBox(width: 4),
                        Text("Beathing",style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffF0F9FF)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage(AppAssets.icYoga)),
                        SizedBox(width: 4),
                        Text("Yoga",style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
