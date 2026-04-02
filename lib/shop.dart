import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden_app/lemonbalm.dart';

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
  final List<Map<String, dynamic>> plants = [
    {'image': 'assets/image 1 (4).png', 'name': 'Basil', 'price': '\$20'},
    {'image': 'assets/image 222.png', 'name': 'Mint', 'price': '\$15'},
    {'image': 'assets/image 1 (4).png', 'name': 'Basil', 'price': '\$20'},
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
                      height:MediaQuery.of(context).size.height* 0.38,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: GestureDetector(
                              onTap: () {
                                if (items[index]['name'] == 'Lemon Balm') {
                                  showModalBottomSheet(
                                    context: context,
                                    builder:
                                        (context) =>
                                            showmodelbottomsheet(context),
                                  );
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
                                // width: 180.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      116,
                                      158,
                                      158,
                                      158,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      items[index]['image'],
                                      // height: 180.h,
                                      // width: 180.w,
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
                              ),
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
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildTab("All", 0),
                            SizedBox(width: 10.w),
                            _buildTab("Ornamentals", 1),
                            SizedBox(width: 10.w),
                            _buildTab("Supplements", 2),
                            SizedBox(width: 10.w),
                            _buildTab("Herbs", 3),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    if (selectedTab == 0)
                      SizedBox(
                        height: 300.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: plants.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: Container(
                                width: 180.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      116,
                                      158,
                                      158,
                                      158,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      plants[index]['image'],
                                      height: 180.h,
                                      width: 180.w,
                                    ),
                                    Text(
                                      plants[index]['name'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 21.sp,
                                        color: Color(0xff06492C),
                                      ),
                                    ),
                                    Text(
                                      plants[index]['price'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Color.fromARGB(135, 6, 73, 44),
                                      ),
                                    ),
                                  ],
                                ),
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

  Widget _buildTab(String title, int index) {
    final isSelected = selectedTab == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff0C9359) : Colors.transparent,
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(color: Color(0xff0C9359), width: 1.2),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: isSelected ? Colors.white : Color(0xff0C9359),
          ),
        ),
      ),
    );
  }

  Widget showmodelbottomsheet(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Container(
              height: 8.h,
              width: 48.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40.h),
            Image.asset('assets/image 1 (4).png', height: 120.h, width: 120.w),
            Text(
              'Lemon Balm',
              style: TextStyle(
                fontWeight: FontWeight.w600,
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
              'Lemon Balm is a 50cm to 80cm high perennial herb with \n        a four-edged, branching, sparsely-haired stalk.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Read more',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: Color(0xff0C9359),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Row(
                children: [
                  Container(
                    width: 64.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(color: Color(0xff0C9359)),
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Lemonbalm()),
                        );
                      },
                      child: Container(
                        width: 300.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: Color(0xff0C9359),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
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
