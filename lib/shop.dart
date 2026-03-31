import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final List<Map<String, dynamic>> items = [
    {'image': 'assets/image 1 (3).png', 'name': 'Oregano', 'price': '\$25'},
    {'image': 'assets/image 1 (2).png', 'name': 'Lemon Balm', 'price': '\$10'},
    {'image': 'assets/image 1 (3).png', 'name': 'Oregano', 'price': '\$25'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 125.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: CircleAvatar(
                          radius: 30.r,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/Vector (10).png',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Shop 🛒',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Popular items',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 250.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 180.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white,
                            border: Border.all(
                              color: const Color.fromARGB(116, 158, 158, 158),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                items[index]['image'],
                                height: 180.h,
                                width: 180.w,
                              ),
                              Text(
                                items[index]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21.sp,
                                  color: Color(0xff06492C),
                                ),
                              ),
                              Text(
                                items[index]['price'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color.fromARGB(135, 6, 73, 44),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Our nursery',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20.h),
                 Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color.fromARGB(33, 12, 147, 88),
                      ),
                      child: Row(
                        children: [
                          _buildTab("All", 0),
                          _buildTab("Ornamentals", 1),
                          _buildTab("Supplements", 2),
                           _buildTab("Herbs", 3),
                        ],
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
