import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden_app/bottomnavibar.dart';
import 'package:smart_garden_app/homepage.dart';
import 'package:smart_garden_app/loginfiles.dart/login.dart';

class Registername extends StatefulWidget {
  const Registername({super.key});

  @override
  State<Registername> createState() => _RegisternameState();
}

class _RegisternameState extends State<Registername> {
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
                    'Let’s personalize your \nexperience',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    'What can we call you? Could be your name, \na nickname or something funny ☺.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Row(
                    children: [
                      Icon(Icons.person_4_outlined, color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          'Name',
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
                    padding: EdgeInsets.only(top: 10.h),
                    child: SizedBox(
                      width: 360.w,
                      child: Divider(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 380.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bottomnavibar()),
                      );
                    },
                    child: Container(
                      width: 366.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.white),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: Center(
                          child: Text(
                            'Continue',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
