import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden_app/loginfiles.dart/login.dart';
import 'package:smart_garden_app/registers.dart/registername.dart';

class Registeronaepod extends StatefulWidget {
  const Registeronaepod({super.key});

  @override
  State<Registeronaepod> createState() => _RegisteronaepodState();
}

class _RegisteronaepodState extends State<Registeronaepod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C9359),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100.h),
                  Text(
                    'Register on Aepod',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Create an Aepod account, We can’t wait to \nhave you.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 70.h),
                  Row(
                    children: [
                      Icon(Icons.mail_outline, color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
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
                  SizedBox(
                    width: 360.w,
                    height: 40.h,
                    child: Divider(color: Color(0xffFFFFFF)),
                  ),
                  Row(
                    children: [
                      Icon(Icons.lock_outline_rounded, color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 360.w,
                    height: 40.h,
                    child: Divider(color: Colors.white),
                  ),
                  SizedBox(height: 40.h),
                  Text(
                    'Or Register using social media',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Row(
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
                                    'Facebook ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Container(
                            width: 175.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 14.h,
                                horizontal: 30.w,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100.h),
                    child: GestureDetector(
                      onTap: () {
                        Registername;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registername(),
                          ),
                        );
                      },
                      child: Container(
                        width: 366.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 16.h,
                            // horizontal: 150.w,
                          ),
                          child: Center(
                            child: Text(
                              'Register',
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
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Login;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        'Already have an account? Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
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
