import 'package:cred/util/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedPopUp extends StatefulWidget {
  bool? checked;

  AnimatedPopUp({Key? key, this.checked}) : super(key: key);

  @override
  State<AnimatedPopUp> createState() => _AnimatedPopUpState();
}

class _AnimatedPopUpState extends State<AnimatedPopUp> {
  List<Color> categoryIconColor = [
    CustomColors.mainOrange,
    CustomColors.mainPurple,
    CustomColors.lightBlue,
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.passthrough,
      children: [
        Container(
          margin: EdgeInsets.only(top: 50, left: 40.w, right: 40.w),
          height: 300.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: CustomColors.backgroundColor,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75))
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: CustomColors.mainOrange.withOpacity(0.1),
                      child: Icon(
                        Icons.local_fire_department,
                        color: CustomColors.mainOrange,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'New Workout',
                      style: TextStyle(
                          color: CustomColors.mainBlack,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'From previous',
                  style: TextStyle(
                      color: CustomColors.mainBlack,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                TextButton.icon(
                    onPressed: () {
                      print('object');
                      setState(() {
                        widget.checked == false;
                      });
                    },
                    icon: Icon(
                      Icons.launch,
                      color: Colors.grey.shade400,
                    ),
                    label: Text(
                      'Close',
                      style: TextStyle(
                          color: CustomColors.mainBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ListView.builder(
                itemCount: categoryIconColor.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10, top: 80, right: 20),
                    height: 100.h,
                    width: 240.w,
                    decoration: BoxDecoration(
                      color: CustomColors.backgroundColor,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 15.0,
                            offset: Offset(0.5, 0.75))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: categoryIconColor[index],
                            ),
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'AUG',
                                      style: TextStyle(
                                          color: CustomColors.backgroundColor,
                                          fontSize: 13),
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
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                    color:
                                        CustomColors.mainBlack.withOpacity(0.6),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
