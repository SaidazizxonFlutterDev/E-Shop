import 'package:e_shop/core/constants/asset_const.dart';
import 'package:e_shop/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpButton extends StatelessWidget {
  final Color color;
  const SignUpButton({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.w,
      height: 57.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsConst.signUp),
          SizedBox(width: 14.w),
          Text(
            "Sign Up",
            style: TextStyle(
              color: ColorConst.kWhite,
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
