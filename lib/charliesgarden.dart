import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden_app/homepage.dart';

class Charliesgarden extends StatefulWidget {
  const Charliesgarden({super.key});

  @override
  State<Charliesgarden> createState() => _CharliesgardenState();
}

class _CharliesgardenState extends State<Charliesgarden> {
  final List<Map<String, dynamic>> pots = [
    {
      'image': 'assets/image 1.png',
      'name': 'Basil',
      'type': 'Herb',
      'harvest': 'Harvest in 3 days',
      'plants': 'Planted 8 days ago',
    },
    {
      'image': 'assets/image 1 (1).png',
      'name': 'Mint',
      'type': 'Herb',
      'harvest': 'Harvest in 10 days',
      'plants': 'Planted 5 days ago',
    },
    {
      'image': 'assets/image 1 (2).png',
      'name': 'Lemon Balm',
      'type': 'Herb',
      'harvest': 'Harvest in 15 days',
      'plants': 'Planted yesterday',
    },
    {
      'image': 'assets/image 1 (3).png',
      'name': 'Oregano',
      'type': 'Herb',
      'harvest': 'Harvest in 3 days',
      'plants': 'Planted today',
    },
  ];
  final List<String> imageslide = [
    'assets/image 1 (4).png',
    'assets/image 2.png',
    'assets/image 1 (5).png',
  ];
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// HEADER
              Stack(
                children: [
                  Image.asset(
                    'assets/Rectangle 28 (1).png',
                    fit: BoxFit.fill,
                    height: 245.h,
                    width: double.infinity,
                  ),

                  /// BACK BUTTON
                  Positioned(
                    top: 60.h,
                    left: 30.w,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => HomePage()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.h,
                          horizontal: 15.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xff0C9359),
                            ),
                            Text(
                              'Go back',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp,
                                color: Color(0xff0C9359),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  /// MENU ICON
                  Positioned(
                    top: 60.h,
                    right: 30.w,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.more_horiz, color: Color(0xff0C9359)),
                    ),
                  ),
                ],
              ),

              /// CONTENT
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),

                    Text(
                      'Charlie’s Garden',
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Text(
                      'ID: 1344295024',
                      style: TextStyle(color: Colors.grey),
                    ),

                    SizedBox(height: 20.h),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color.fromARGB(33, 12, 147, 88),
                      ),
                      child: Row(
                        children: [
                          _buildTab("PLANTS", 0),
                          _buildTab("LOG", 1),
                          _buildTab("SETTINGS", 2),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.h),

                    if (selectedTab == 0)
                      Column(
                        children: [
                          Container(
                            width: 375.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/Vector (3).png',
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.w),
                                        child: Text(
                                          'Using 6 out 9 pods',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color(0xff06492C),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/Vector (4).png',
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.w),
                                        child: Text(
                                          'Basil will be ready for harvest in 3 days',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color(0xff06492C),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),

                          /// PLANTS TAB
                          Row(
                            children: [
                              Image.asset(
                                'assets/Frame (3).png',
                                height: 16.h,
                                width: 16.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w),
                                child: Text(
                                  'Growing now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Color.fromARGB(164, 8, 63, 39),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),

                          ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: pots.length,
                            separatorBuilder:
                                (_, __) => Divider(color: Colors.grey.shade300),
                            itemBuilder: (context, index) {
                              final item = pots[index];

                              return Row(
                                children: [
                                  Image.asset(
                                    item['image'],
                                    height: 50.h,
                                    width: 50.w,
                                  ),

                                  SizedBox(width: 10.w),

                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            if (item['name'] == 'Lemon Balm') {
                                              showModelBottomSheet(
                                                context,
                                                item,
                                              );
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                item['name'],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.sp,
                                                  color: Color(0xff06492C),
                                                ),
                                              ),
                                              SizedBox(width: 5.w),
                                              Icon(
                                                Icons.info,
                                                size: 14,
                                                color: Colors.green,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          item['type'],
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(item['harvest']),
                                      Text(
                                        item['plants'],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),

                    if (selectedTab == 1)
                      Column(
                        children: [
                          Text(
                            'Sort by:',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: Color(0xff06492CBF),
                            ),
                          ),
                        ],
                      ),
                    if (selectedTab == 2)
                      Column(
                        children: [
                          Container(
                            width: 374.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(116, 158, 158, 158),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 25.h),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/Vector (6).png',
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10.w,
                                            ),
                                            child: Text(
                                              'Connectivity',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.sp,
                                                color: Color(0xff06492C),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: 10.w,
                                            ),
                                            child: Text(
                                              'Connected via Wifi',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14.sp,
                                                color: Color(0xff06492C),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Color(0xff0C9359),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/Vector (7).png',
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10.w,
                                            ),
                                            child: Text(
                                              'Plantlight Settings',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.sp,
                                                color: Color(0xff06492C),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: 10.w,
                                            ),
                                            child: Text(
                                              'Currently ON',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14.sp,
                                                color: Color(0xff06492C),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Color(0xff0C9359),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/Vector (3).png',
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10.w,
                                            ),
                                            child: Text(
                                              'Cycle Settings',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.sp,
                                                color: Color(0xff06492C),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Color(0xff0C9359),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 30.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/Frame (7).png',
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10.w,
                                            ),
                                            child: Text(
                                              'Aepod Sync Settings',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.sp,
                                                color: Color(0xff06492C),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Color(0xff0C9359),
                                      ),
                                    ],
                                  ),
                                ],
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
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    final isSelected = selectedTab == index;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Color(0xff06492C) : Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showModelBottomSheet(BuildContext context, Map<String, dynamic> item) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (_) {
        return Container(
          height: 500.h,
          width: double.infinity,
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              Container(height: 5, width: 50, color: Colors.grey),
              SizedBox(height: 30),
              CarouselSlider(
                items:
                    imageslide.map((imagePath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(15.r),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.contain,
                              width: double.infinity,
                            ),
                          );
                        },
                      );
                    }).toList(),

                options: CarouselOptions(
                  height: 120.h,
                  enlargeCenterPage: true,
                  viewportFraction: 0.5,
                  autoPlay: true,
                ),
              ),
              Text(
                'Lemon Balm',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'Herb',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Color.fromARGB(116, 6, 65, 40),
                ),
              ),
              Text(
                'Harvest in 3 days',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Color(0xff06492C),
                ),
              ),
              Text(
                'Planted 8 days ago ',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Color.fromARGB(107, 6, 65, 40),
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 90.w),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Image.asset(
                            'assets/Vector (5).png',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                        Text(
                          '23°c',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff06492C),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Image.asset(
                            'assets/Frame (5).png',
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 90.w),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Image.asset(
                            'assets/Frame (6).png',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                        Text(
                          '85%',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff06492C),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Image.asset(
                            'assets/Frame (5).png',
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Text(
                ' See growing tips',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Color(0xff0C9359),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
