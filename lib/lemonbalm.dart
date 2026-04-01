import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Lemonbalm extends StatefulWidget {
  const Lemonbalm({super.key});

  @override
  State<Lemonbalm> createState() => _LemonbalmState();
}

class _LemonbalmState extends State<Lemonbalm> {
  final List<Map<String, dynamic>> plants = [
    {'image': 'assets/image 1 (3).png'},
    {'image': 'assets/image 1 (2).png'},
    {'image': 'assets/image 1 (3).png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
          
                  children: [
                    SizedBox(height: 50.h),
                    Center(
                      child: Image.asset(
                        'assets/Rectangle 57.png',
                        height: 16.h,
                        width: 64.w,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lemon Balm',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 32.sp,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Herb-\$20',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 21.sp,
                                color: Color(0xff0C9359),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              '121 people are growing this 🌿',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/image 1 (4).png',
                          height: 120.h,
                          width: 120.w,
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        Container(
                          width: 64.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                              color: Color(0xff0C9359),
                              width: 2.5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 17.h),
                            child: Image.asset(
                              'assets/Frame (9).png',
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Container(
                            width: 300.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Color(0xff0C9359),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.h),
                              child: Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: Color.fromARGB(140, 6, 73, 44),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Lemon Balm is a 50cm to 80cm high perennial herb with a \nfour-edged, branching, sparsely-haired stalk. The opposed \nleaves, whose stalked stems vary in length, are broadly \noval to heart-shaped and have an irregular crenate \n(rounded teeth) or serrate (small, sharp teeth) edge.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(192, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Growing information',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: Color.fromARGB(140, 6, 73, 44),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Image.asset(
                          'assets/Vector (5).png',
                          height: 24.h,
                          width: 24.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            'Room temparature is fine',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: Color(0xff06492C),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Image.asset(
                          'assets/Frame (6).png',
                          height: 24.h,
                          width: 24.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            'Regular watering works best',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: Color(0xff06492C),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Image.asset(
                          'assets/Frame (10).png',
                          height: 24.h,
                          width: 24.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            'Typically ready for harvest after 4 weeks',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: Color(0xff06492C),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Other Herbs',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: Color.fromARGB(140, 6, 73, 44),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      height: 200.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: plants.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  EdgeInsets.only(right: 10.w),
                            child: Container(
                              width: 180.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Image.asset(plants[index]['image']),
                            ),
                          );
                        },
                      ),
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
