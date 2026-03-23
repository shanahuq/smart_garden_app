import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden_app/loginfiles.dart/login2.dart';
import 'package:smart_garden_app/registers.dart/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C9359),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 90.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Let’s get back to growing your Aepod plants, \nshall we?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Icon(Icons.mail_outline, color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          'Email Address',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: SizedBox(
                      width: 370.w,
                      child: Divider(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Icon(Icons.lock_outline, color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 220.w),
                        child: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: SizedBox(
                      width: 370.w,
                      child: Divider(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 35.h),
                  Text(
                    'Or Login using social media',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 175.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                            horizontal: 30.w,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Vector (2).png',
                                height: 18.h,
                                width: 18.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  'Facebook',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: Container(
                          width: 175.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15.h,
                              horizontal: 40.w,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/Frame.png',
                                  height: 18.h,
                                  width: 18.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Text(
                                    'Google',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 150.h),
                  GestureDetector(
                    onTap: () {
                      Login2;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login2()),
                      );
                    },
                    child: Container(
                      width: 366.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                              color: Color(0xff0C9359),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Register;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text(
                        'New here? Register',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
