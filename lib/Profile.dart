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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200.h),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          padding: EdgeInsets.only(right: 20.w),
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
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/Frame (333).png',
                              height: 24.h,
                              width: 24.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text(
                                'Visit the Aepod Store',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21.sp,
                                  color: Color(0xff06492C),
                                ),
                              ),
                            ),
                          ],
                        ),
          
                        Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff0C9359),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: SizedBox(
                        width: 380.w,
                        child: Divider(
                          color: const Color.fromARGB(70, 158, 158, 158),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Text(
                      'Buy attachments and supplements for your Aepod. \nOrders typically arrive in 3 working days',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(170, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 40.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/Vector (6).png',
                              height: 24.h,
                              width: 24.w,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 10.w),
                              child: Text(
                                'Language',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Color(0xff06492C),
                                ),
                              ),
                            ),
                          ],
                        ),
          
                        Padding(
                          padding:  EdgeInsets.only(right: 20.w),
                          child: Row(
                            children: [
                              Text(
                                'English',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color.fromARGB(122, 6, 73, 44),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff0C9359),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                      SizedBox(height: 20.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/Vector (7).png',
                              height: 24.h,
                              width: 24.w,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 10.w),
                              child: Text(
                                'Currency',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Color(0xff06492C),
                                ),
                              ),
                            ),
                          ],
                        ),
          
                        Padding(
                          padding:  EdgeInsets.only(right: 20.w),
                          child: Row(
                            children: [
                              Text(
                                'USD',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color.fromARGB(122, 6, 73, 44),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff0C9359),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                     SizedBox(height: 20.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/Vector (5).png',
                              height: 24.h,
                              width: 24.w,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 10.w),
                              child: Text(
                                'Temperature Unit',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Color(0xff06492C),
                                ),
                              ),
                            ),
                          ],
                        ),
          
                        Padding(
                          padding:  EdgeInsets.only(right: 20.w),
                          child: Row(
                            children: [
                              Text(
                                'Celsius',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color.fromARGB(122, 6, 73, 44),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff0C9359),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                     SizedBox(height: 20.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/Frame (7).png',
                              height: 24.h,
                              width: 24.w,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 10.w),
                              child: Text(
                                'Sync Settings',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Color(0xff06492C),
                                ),
                              ),
                            ),
                          ],
                        ),
          
                        Padding(
                          padding:  EdgeInsets.only(right: 20.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff0C9359),
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
      ),
    );
  }
}
