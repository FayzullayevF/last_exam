import 'package:exam/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 114.h,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavBarItem(svg: "assets/icons/galery.svg", title: "Home"),
          BottomNavBarItem(svg: "assets/icons/search.svg", title: "Search"),
          BottomNavBarItem(svg: "assets/icons/plus.svg", title: ""),
          BottomNavBarItem(svg: "assets/icons/chat.svg", title: "Chat"),
          BottomNavBarItem(svg: "assets/icons/profile.svg", title: "Profile"),
        ],
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({super.key, required this.svg, required this.title});

  final String svg, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(icon: SvgPicture.asset(svg), onPressed: () {}),
        Text(
          title,
          style: TextStyle(
            color: AppColor.primary400,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: "Gilroy",
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
