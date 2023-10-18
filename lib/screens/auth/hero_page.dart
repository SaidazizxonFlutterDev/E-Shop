import 'package:e_shop/core/constants/asset_const.dart';
import 'package:e_shop/core/constants/const_colors.dart';
import 'package:e_shop/widgets/sign_in_button.dart';
import 'package:e_shop/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kWhite,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100.h),
            Image.asset(AssetsConst.mainText),
            SizedBox(
              width: 326.w,
              height: 310.h,
              child: Image.asset(AssetsConst.splash),
            ),
            SizedBox(height: 100.h),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/sign_in'),
              child: const SignInButton(),
            ),
            SizedBox(height: 30.h),
            SignUpButton(color: ColorConst.kSecondary),
          ],
        ),
      ),
    );
  }
}
