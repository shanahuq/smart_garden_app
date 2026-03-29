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
      'icon': Icons.error,
      'type': 'Herb',
      'harvest': 'Harvest in 3 days',
      'plants': 'Planted 8 days ago ',
    },
    {
      'image': 'assets/image 1 (1).png',
      'name': 'Mint',
      'icon': Icons.error,
      'type': 'Herb',
      'harvest': 'Harvest in 10 days',
      'plants': 'Planted 5 days ago ',
    },
    {
      'image': 'assets/image 1 (2).png',
      'name': 'Lemon Balm',
      'icon': Icons.error,
      'type': 'Herb',
      'harvest': 'Harvest in 15 days',
      'plants': 'Planted yesterday ',
    },
    {
      'image': 'assets/image 1 (3).png',
      'name': 'Oregano',
      'icon': Icons.error,
      'type': 'Herb',
      'harvest': 'Harvest in 3 days',
      'plants': 'Planted today ',
    },
  ];
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/Rectangle 28 (1).png',
                      fit: BoxFit.fill,
                      height: 245.h,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 60.h,
                    left: 30.w,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        width: 115.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.w),
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
                    ),
                  ),
                  Positioned(
                    top: 60.h,
                    right: 30.w,
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.more_horiz, color: Color(0xff0C9359)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Text(
                          'Charlie’s Garden',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 32.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'ID: 1344295024',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(147, 17, 17, 17),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color.fromARGB(33, 12, 147, 88),
                      ),  child: Row(
    children: [
      _buildTab("PLANTS", 0),
      _buildTab("LOG", 1),
      _buildTab("SETTINGS", 2),
    ],
  ),
),
  
                      
                    
                    
                    SizedBox(height: 30.h),
                    if (selectedTab == 0) 
                    Container(
                      width: 374.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/Vector (3).png',
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: Text(
                                    'Using 6 out 9 pods',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
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
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: Text(
                                    'Basil will be ready for harvest in 3 days',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Color(0xff06492C),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30.h),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/Frame (3).png',
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                      Text(
                                        'Growing now',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Color.fromARGB(161, 5, 56, 34),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h,),
                                  ListView.separated(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: pots.length,
                                    separatorBuilder:
                                        (_, __) => Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5.h,
                                          ),
                                          child: Divider(
                                            color: Colors.grey.shade200,
                                          ),
                                        ),
                                    itemBuilder: (context, index) {
                                      final item = pots[index];

                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            item['image'],
                                            height: 50.h,
                                            width: 50.w,
                                          ),

                                          SizedBox(width: 12.w),

                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      item['name'],
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 16.sp,
                                                        color: Color(
                                                          0xff06492C,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 6.w),
                                                    Icon(
                                                      Icons.info,
                                                      size: 14.sp,
                                                      color: Colors.green,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  item['type'],
                                                  style: TextStyle(
                                                    fontSize: 13.sp,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                item['harvest'],
                                                style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color: Color(0xff06492C),
                                                ),
                                              ),
                                              Text(
                                                item['plants'],
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
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
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: isSelected
                  ? Color(0xff06492C)
                  : Color.fromARGB(125, 6, 73, 44),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget showmodelbottonsheet(BuildContext context) {
  return Container(
    height: 500.h,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.r),
      color: Colors.white,
    ),
    child: Container(
      height: 8.h,
      width: 48.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Color(0xff06492C40),
      ),
    ),
  );
}
}
