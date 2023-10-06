import 'package:flutter/material.dart';

import '../../../../ui/utils/app_assets.dart';

class TabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          width: 320,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffEAECF5)
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 30,
                      width: 54,
                      child: Center(child: Text("7 days")),
                    ),
                    SizedBox(height: 8),
                    Text("Morning Yoga",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    )),
                    SizedBox(height: 6),
                    Text("Improve mental focus."
                        ,style: TextStyle(
                            fontSize: 10
                        )),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Image(image: AssetImage(AppAssets.ic_clock)),
                        SizedBox(width: 6),
                        Text("30 mins",style: TextStyle(
                            fontSize: 10
                        ))
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: Image(image: AssetImage(AppAssets.yoga)))
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 170,
          width: 320,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffEAECF5)
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 30,
                      width: 54,
                      child: Center(child: Text("3 days")),
                    ),
                    SizedBox(height: 8),
                    Text("Plank Exercise",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    )),
                    SizedBox(height: 6),
                    Text("Improve mental focus."
                        ,style: TextStyle(
                            fontSize: 10
                        )),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Image(image: AssetImage(AppAssets.ic_clock)),
                        SizedBox(width: 6),
                        Text("30 mins",style: TextStyle(
                            fontSize: 10
                        ))
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: Image(image: AssetImage(AppAssets.blank)))
            ],
          ),
        ),


      ],
    );
  }
}
