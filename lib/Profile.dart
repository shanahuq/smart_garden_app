import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 200.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hey, Isaac 🌿',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 32.sp,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 20.w),
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/Frame (11).png',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                      ),
                    ],
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
