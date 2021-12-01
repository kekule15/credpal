import 'package:cred/screens/custom_widgets/animated_pop_up.dart';
import 'package:cred/screens/custom_widgets/date_view_widget.dart';
import 'package:cred/screens/custom_widgets/view_widget.dart';
import 'package:cred/util/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_widgets/helpers.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool checkBackground = true;
  @override
  void initState() {
    super.initState();
  }

  List<Color> categoryIconColor = [
    CustomColors.mainOrange,
    CustomColors.mainPurple,
    CustomColors.lightBlue,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: checkBackground ? Colors.white : Colors.grey.withOpacity(0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            checkBackground
                ? Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 50, right: 20),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor: CustomColors.lightBlue
                                          .withOpacity(0.1),
                                      child: Icon(Icons.person)),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Hello David',
                                    style: TextStyle(
                                        color: CustomColors.mainBlack,
                                        fontSize: 16.sp),
                                  )
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    checkBackground = !checkBackground;
                                  });
                                },
                                child: Container(
                                  height: 40.w,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.9),
                                            blurRadius: 4.0,
                                            offset: Offset(1, 3.75))
                                      ],
                                      color: CustomColors.mainOrange,
                                      borderRadius:
                                          BorderRadius.circular(15.r)),
                                  child: Center(
                                    child: Icon(
                                      Icons.local_fire_department,
                                      color: CustomColors.backgroundColor,
                                    ),
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
                                    color:
                                        CustomColors.mainBlack.withOpacity(0.5),
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
                                  color:
                                      CustomColors.mainBlack.withOpacity(0.5),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 40.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                              text: '72.4',
                                              style: TextStyle(
                                                  color: CustomColors.mainBlack,
                                                  fontSize: 35.sp,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                            text: 'kg',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Current Weight',
                                        style: TextStyle(
                                          color: CustomColors.mainBlack
                                              .withOpacity(0.5),
                                          fontSize: 13.sp,
                                        )),
                                  ]),
                              Container(
                                  height: 60.h,
                                  width: 0.5.w,
                                  color: Colors.grey),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                              text: '7.6',
                                              style: TextStyle(
                                                  color: CustomColors.mainBlack,
                                                  fontSize: 25.sp,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                            text: 'kg',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
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
                                            color: Colors.grey.shade300)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text('Left to Gain',
                                        style: TextStyle(
                                          color: CustomColors.mainBlack
                                              .withOpacity(0.5),
                                          fontSize: 13.sp,
                                        )),
                                  ])
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : AnimatedPopUp(
                    checked: () {
                      setState(() {
                        checkBackground = !checkBackground;
                      });
                    },
                  ),
            SizedBox(height: 50.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: HelperClass().categoryTitle.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 25, left: 25),
                        child: CategoryWidget(
                            title: HelperClass().categoryTitle[index],
                            sub: HelperClass().categorysubTitle[index],
                            iconColor: categoryIconColor[index],
                            backgroungColor:
                                HelperClass().categorybackColor[index],
                            subAppend: HelperClass().categorysubAppend[index],
                            icon: HelperClass().categoryIcon[index]),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: DateViewWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
