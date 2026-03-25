import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(49, 100, 255, 219),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello, Isaac 🌿',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 32.sp,
                          color: Color(0xff111111),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color.fromARGB(15, 12, 147, 88),
                          child: Icon(Icons.settings, color: Color(0xff0C9359)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 260.h,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: 3,
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        double scale = _currentIndex == index ? 1.0 : 0.92;

                        return Transform.scale(
                          scale: scale,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              /// 🌿 IMAGE CARD
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.r),
                                child: Image.asset(
                                  'assets/Rectangle 28.png', // ⚠️ rename asset (no spaces)
                                  height: 216.h,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              /// 📦 FLOATING INFO CARD
                              Positioned(
                                bottom: 0.h,
                                left: 20.w,
                                right: 20.w,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                    vertical: 14.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.r),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10.r,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Charlie’s Garden',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          Text(
                                            'ID: 1344295024',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      CircleAvatar(
                                        radius: 18.r,
                                        backgroundColor: const Color(
                                          0xffE6F4EF,
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 16.sp,
                                          color: const Color(0xff0C9359),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        height: 6.h,
                        width: _currentIndex == index ? 20.w : 16.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color:
                              _currentIndex == index
                                  ? const Color(0xff0C9359)
                                  : const Color.fromARGB(70, 12, 147, 88),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          width: 114.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.air, color: Colors.tealAccent),
                                  Text(
                                    'Humidity',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Color.fromARGB(157, 6, 73, 44),
                                    ),
                                  ),
                                  Text(
                                    '74%',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Color(0xff06492C),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 114.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.thermostat,
                                  color: Colors.tealAccent,
                                ),
                                Text(
                                  'Temperature',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Color.fromARGB(157, 6, 73, 44),
                                  ),
                                ),
                                Text(
                                  '23°c',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color: Color(0xff06492C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Container(
                          width: 114.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.water_drop_outlined,
                                    color: Colors.tealAccent,
                                  ),
                                  Text(
                                    'Water Level',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Color.fromARGB(157, 6, 73, 44),
                                    ),
                                  ),
                                  Text(
                                    '85%',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Color(0xff06492C),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          width: 114.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.signal_wifi_0_bar_sharp,
                                    color: Colors.tealAccent,
                                  ),
                                  Text(
                                    'Connectivity',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Color.fromARGB(157, 6, 73, 44),
                                    ),
                                  ),
                                  Text(
                                    'Online',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Color(0xff06492C),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: Container(
                          width: 230.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nutrient Level',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Color.fromARGB(157, 6, 73, 44),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/Frame (2).png',
                                        height: 20.h,
                                        width: 16.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Text(
                                          '5 grams left',
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
                                      Image.asset(
                                        'assets/Frame (3).png',
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Text(
                                          'Refill in 2 days',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
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
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          width: 230.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Status',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Color.fromARGB(157, 6, 73, 44),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/Vector (3).png',
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Text(
                                          '6 plants growing',
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
                                      Icon(
                                        Icons.access_time_rounded,
                                        color: Colors.tealAccent,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Text(
                                          'Next harvest in 3 days',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.r),
                                ),
                              ),
                              builder:
                                  (context) => showmodelbottomsheet(context),
                            );
                          },
                          child: Container(
                            width: 114.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.lightbulb_outline_rounded,
                                      color: Colors.tealAccent,
                                    ),
                                    Text(
                                      'Light Status',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Color.fromARGB(157, 6, 73, 44),
                                      ),
                                    ),
                                    Text(
                                      'On',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.sp,
                                        color: Color(0xff06492C),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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

  Widget showmodelbottomsheet(BuildContext context) {
    return Container(
      height: 450.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // ✅ IMPORTANT
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔘 Drag Handle
          Center(
            child: Container(
              height: 6.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ),

          SizedBox(height: 20.h),

          /// 📝 Title
          Center(
            child: Text(
              'Light Status',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),

          SizedBox(height: 20.h),

          Divider(),
          SizedBox(height: 10.h,),

          /// 💡 Lights Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lights',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Color(0xff06492C),
                ),
              ),

              /// ✅ Switch instead of image (better)
              Switch(
                value: true,
                activeColor: Color(0xff0C9359),
                onChanged: (value) {},
              ),
            ],
          ),
          SizedBox(height: 10.h,),

          Divider(),
          SizedBox(height: 10.h,),

          /// ⚙️ Automatic Settings
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Automatic Settings',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Color(0xff06492C),
                ),
              ),

              Row(
                children: [
                  Text(
                    'Off at Sunset',
                    style: TextStyle(fontSize: 13.sp, color:Color.fromARGB(146, 6, 73, 44),),
                  ),
                  SizedBox(width: 6.w),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14.sp,
                    color:Color.fromARGB(146, 6, 73, 44),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h,),

          Divider(),

          SizedBox(height: 80.h),

          /// 🔗 Go to Settings
          Center(
            child: Text(
              'Go to Settings',
              style: TextStyle(
                color: Color(0xff0C9359),
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
              ),
            ),
          ),

          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
