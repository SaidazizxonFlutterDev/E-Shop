import 'package:e_shop/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MySignUpForm extends StatelessWidget {
  String title;
  String imagePath;
  TextFormField textFormField;
  MySignUpForm({
    super.key,
    required this.title,
    required this.imagePath,
    required this.textFormField,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: ColorConst.kBlack,
            fontSize: 17.sp,
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imagePath),
            SizedBox(width: 288.w, height: 43.h, child: textFormField),
          ],
        ),
      ],
    );
  }
}
