import 'package:exam/feature/main_page/widgets/sliver_app_bar_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 231,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Image(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          Positioned(left: 20,top: 150,child: Row(
            spacing: 12,
            children: [
              SliverAppBarContainers(svg: "assets/icons/key.svg",text: "Purchase",),
              SliverAppBarContainers(svg: "assets/icons/tick.svg",text: "Products",),
              SliverAppBarContainers(svg: "assets/icons/time.svg",text: "Rent",),
              SliverAppBarContainers(svg: "assets/icons/controller.svg",text: "Hand over",),

            ],
          ))
          ],
        ),
      ),
      title: Row(
        spacing: 10,
        children: [
          Image(image: AssetImage("assets/images/exam.png")),
          Text(
            "SOTT",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SvgPicture.asset("assets/icons/notification.svg"),
        ),
      ],
    );
  }
}
