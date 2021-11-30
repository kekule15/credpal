import 'package:cred/screens/custom_widgets/view_widget.dart';
import 'package:cred/util/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(20.w, 60.h, 20.w, 0.h),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Hello David',
                            style: TextStyle(
                                color: CustomColors.mainBlack, fontSize: 16.sp),
                          )
                        ],
                      ),
                      Container(
                        height: 40.w,
                        width: 40.w,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75))
                            ],
                            color: CustomColors.mainOrange,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Center(
                          child: Icon(
                            Icons.whatshot,
                            color: CustomColors.backgroundColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stats',
                            style: TextStyle(
                                color: CustomColors.mainBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 35.sp),
                          ),
                          Container(
                            color: CustomColors.lightBlue,
                            height: 4.h,
                            width: 20.w,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Muscles',
                        style: TextStyle(
                            color: CustomColors.mainBlack.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 30.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '58',
                        style: TextStyle(
                          color: CustomColors.mainBlack,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'workouts Completed',
                        style: TextStyle(
                          color: CustomColors.mainBlack.withOpacity(0.5),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('72.4',
                                style: TextStyle(
                                    color: CustomColors.mainBlack,
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Current Weight',
                                style: TextStyle(
                                  color:
                                      CustomColors.mainBlack.withOpacity(0.5),
                                  fontSize: 13.sp,
                                )),
                          ]),
                      Container(height: 60.h, width: 0.5.w, color: Colors.grey),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('7.6kg',
                                style: TextStyle(
                                    color: CustomColors.mainBlack,
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 40.w,
                                    height: 2.h,
                                    color: CustomColors.mainOrange),
                                Container(
                                    width: 30.w,
                                    height: 2.h,
                                    color: Colors.grey)
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text('Current Weight',
                                style: TextStyle(
                                  color:
                                      CustomColors.mainBlack.withOpacity(0.5),
                                  fontSize: 13.sp,
                                )),
                          ])
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryWidget(),
                CategoryWidget(),
                CategoryWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
