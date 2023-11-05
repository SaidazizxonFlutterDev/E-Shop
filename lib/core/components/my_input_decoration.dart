import 'package:e_shop/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration myInputDecoration(
    {required String hint}) {

  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 14.5.w, horizontal: 15.h),
    labelText: hint,
    fillColor: ColorConst.kGrey,
    filled: true,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7.r),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
  );
}
