import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden_app/Menu.dart';
import 'package:smart_garden_app/Profile.dart';
import 'package:smart_garden_app/homepage.dart';

class Bottomnavibar extends StatefulWidget {
  const Bottomnavibar({super.key});

  @override
  State<Bottomnavibar> createState() => _BottomnavibarState();
}

class _BottomnavibarState extends State<Bottomnavibar> {
  int selected_index = 0;
  final List<Widget> page = [HomePage(), Menu(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[selected_index],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected_index = 0;
                });
              },
              child: SizedBox(
                height: selected_index == 0 ? 40.h : 32.h,
                width: selected_index == 0 ? 40.w : 32.w,
                child: Image.asset(
                  'assets/Frame 10.png',
                  color: selected_index == 0 ? Color.fromARGB(255, 3, 100, 58) : const Color.fromARGB(255, 24, 24, 24),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected_index = 1;
                });
              },
              child: SizedBox(
                height: selected_index == 1 ? 40.h : 32.h,
                width: selected_index == 1 ? 40.w : 32.w,
                child: Image.asset(
                  'assets/Vector (8).png',
                  color: selected_index == 1 ? Colors.green : Colors.grey,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected_index = 2;
                });
              },
              child: SizedBox(
                height: selected_index == 2 ? 40.h : 32.h,
                width: selected_index == 2 ? 40.w : 32.w,
                child: Image.asset(
                  'assets/Vector (9).png',
                  color: selected_index == 2 ? Colors.green : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
