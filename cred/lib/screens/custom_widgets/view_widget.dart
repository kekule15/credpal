import 'package:cred/util/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: CustomColors.mainOrange.withOpacity(0.2),
            child: Icon(
              Icons.bolt,
              color: CustomColors.mainOrange,
              size: 18,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            '12.6K',
            style: TextStyle(color: CustomColors.mainBlack, fontSize: 15.sp),
          )
        ],
      ),
    );
  }
}
