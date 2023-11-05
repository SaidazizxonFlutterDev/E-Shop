import 'package:e_shop/core/components/my_input_decoration.dart';
import 'package:e_shop/core/constants/asset_const.dart';
import 'package:e_shop/core/constants/const_colors.dart';
import 'package:e_shop/widgets/my_divider_widget.dart';
import 'package:e_shop/widgets/sign_up_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: 20.h, right: 17.w, left: 17.w, bottom: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign Up Here",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21.sp,
                      ),
                    ),
                    Container(
                      width: 41.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        border: Border.all(
                          color: ColorConst.kSecondary,
                          width: 2.5.r,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Exit",
                          style: TextStyle(
                            color: ColorConst.kSecondary,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Text(
                  "Let's create your account!!!",
                  style: TextStyle(
                    color: ColorConst.kSecondaryGrey,
                    fontSize: 17.sp,
                    letterSpacing: 1,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(17.r),
                    child: SizedBox(
                      height: 100.h,
                      width: 100.h,
                      child: Image.asset(AssetsConst.profilePhoto),
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      MySignUpForm(
                        title: "Usernmae",
                        imagePath: AssetsConst.usernameIcon,
                        textFormField: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration:
                              myInputDecoration(hint: "Enter your username"),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      MySignUpForm(
                        title: "E-mail Address",
                        imagePath: AssetsConst.emailIcon,
                        textFormField: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: myInputDecoration(
                              hint: "Enter your E-mail Adress"),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      MySignUpForm(
                        title: "Password",
                        imagePath: AssetsConst.passwordIcon,
                        textFormField: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.name,
                          decoration:
                              myInputDecoration(hint: "Enter your Password"),
                        ),
                      ),
                      SizedBox(height: 39.h),
                    ],
                  ),
                ),
                Container(
                  height: 47.h,
                  width: 326.w,
                  decoration: BoxDecoration(
                    color: ColorConst.primary,
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AssetsConst.signUp),
                      SizedBox(width: 10.w),
                      Text(
                        "Sign UP",
                        style: TextStyle(
                          color: ColorConst.kWhite,
                          fontSize: 21.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                const MyDivider(),
                Container(
                  height: 47.h,
                  width: 326.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.r),
                    border: Border.all(
                      color: ColorConst.kSecondary,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up with Google",
                      style: TextStyle(
                          color: ColorConst.kSecondaryGrey, fontSize: 18.sp),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 13.sp, color: ColorConst.kSecondaryGrey),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: ColorConst.kSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
