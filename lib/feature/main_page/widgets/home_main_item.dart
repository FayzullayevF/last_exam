import 'package:exam/core/utils/colors.dart';
import 'package:exam/feature/main_page/blocs/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../blocs/home_state.dart';

class HomeMainItem extends StatelessWidget {
  const HomeMainItem({
    super.key,
    required this.image,
    required this.price,
    required this.currency,
    required this.area,
    required this.numOfRooms,
    required this.totalFloor,
    required this.floor,
    required this.svg,
    required this.distance,
    required this.title,
    required this.category,
  });

  final String image, currency, svg, title, category;
  final int price, totalFloor, numOfRooms, distance, floor;
  final num area;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.status == HomeStatus.loading) {
          return const Center(child: CupertinoActivityIndicator());
        } else if (state.status == HomeStatus.idle) {
          return SizedBox(
            height: 214.h,
            width: 169.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(image),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${price}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5.h),
                    Text(
                      currency,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      category,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " • ${numOfRooms} kom. ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "• ${totalFloor} from ${floor}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      " • ${area} m",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(svg),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColor.primary400,
                      ),
                    ),
                    Text(
                      "${distance}m",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColor.primary400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
