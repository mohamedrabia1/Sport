import 'package:flutter/material.dart';

import '../../../ui/utils/app_assets.dart';

class TabViewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Image(image: AssetImage(AppAssets.frame1)),
        SizedBox(height: 16),
        Row(
          children: [
            Text("Get Tips",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 16),
        Container(
          height: 190 ,
          width: 320 ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xffE4E7EC)
          ),
          child: Row(
            children: [
              Expanded(child: Image(image: AssetImage(AppAssets.doctor))),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Connect with doctors & get suggestions",style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w500
                      )),
                      SizedBox(height: 6),
                      Text("Connect now and get expert insights "
                          ,style: TextStyle(
                              fontSize: 16
                          )),
                      SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff7F56D9),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 35,
                        width: 105,
                        child: Center(child: Text("View detail",style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 18),
        Row(
          children: [
            Text("Cycle Phases and Period",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
            Spacer(),
            Text("See all",style: TextStyle(color: Color(0xff5925DC),
                fontSize: 16,fontWeight: FontWeight.w500)),
            Icon(Icons.keyboard_arrow_right,color: Color(0xff5925DC))
          ],
        ),
      ],
    );
  }
}
