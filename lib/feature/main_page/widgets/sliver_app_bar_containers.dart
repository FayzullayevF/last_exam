import 'package:exam/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliverAppBarContainers extends StatelessWidget {
  const SliverAppBarContainers({super.key, required this.svg,required this.text});
  final String svg,text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 78.5.w,
          height: 78.5.h,
          decoration: BoxDecoration(
            color: AppColor.yellow500,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(child: SvgPicture.asset(svg),),
        ),
        SizedBox(height: 8.h ),
        Text(text,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,fontFamily: "Gilroy"),)
      ],
    );
  }
}
