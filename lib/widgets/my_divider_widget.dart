import 'package:e_shop/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Divider(color: ColorConst.kSecondaryGrey),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text("or",
                style: TextStyle(
                    fontSize: 20.sp, color: ColorConst.kSecondaryGrey)),
          ),
          Expanded(
            flex: 1,
            child: Divider(color: ColorConst.kSecondaryGrey),
          ),
        ],
      ),
    );
  }
}
