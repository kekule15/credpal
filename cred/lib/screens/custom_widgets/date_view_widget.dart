import 'package:cred/util/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateViewWidget extends StatelessWidget {
  const DateViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 80,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: CustomColors.lightBlue,
            ),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'AUG',
                      style: TextStyle(
                          color: CustomColors.backgroundColor, fontSize: 13),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '17',
                      style: TextStyle(
                          color: CustomColors.backgroundColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 1.5.h,
                    width: 20.w,
                    color: CustomColors.mainOrange,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 1.5.h,
                    width: 20.w,
                    color: CustomColors.mainPurple,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 1.5.h,
                    width: 20.w,
                    color: CustomColors.lightBlue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Recent: Chest & Legs',
                style: TextStyle(
                    color: CustomColors.mainBlack,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                '8 Exercise',
                style: TextStyle(
                    color: CustomColors.mainBlack.withOpacity(0.6),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Container(
            height: 80.h,
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.grey.withOpacity(0.4),
            ),
            child: Center(child: Icon(Icons.keyboard_arrow_right)),
          )
        ],
      ),
    );
  }
}
