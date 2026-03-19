import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  Container(
                    width: 175.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/Vector (2).png',
                            height: 18.h,
                            width: 18.w,
                          ),
                          Text(
                            'Facebook ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
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
