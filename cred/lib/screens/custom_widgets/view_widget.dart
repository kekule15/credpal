import 'package:cred/util/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final String? sub;
  final String? subAppend;
  final Color? backgroungColor;
  final Color? iconColor;

  const CategoryWidget(
      {Key? key,
      this.title,
      this.icon,
      this.sub,
      this.subAppend,
      this.backgroungColor,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: backgroungColor!.withOpacity(0.2),
          child: Icon(
            icon!,
            color: iconColor,
            size: 26.w,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: sub,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: CustomColors.mainBlack),
              ),
              TextSpan(
                text: subAppend,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          title!,
          style: TextStyle(
              color: CustomColors.mainBlack.withOpacity(0.5), fontSize: 15.sp),
        )
      ],
    );
  }
}
