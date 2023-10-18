import 'package:e_shop/core/constants/asset_const.dart';
import 'package:e_shop/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.w,
      height: 57.h,
      decoration: BoxDecoration(
        color: ColorConst.primary,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsConst.signIn),
          SizedBox(width: 14.w),
          Text(
            "Sign In",
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
