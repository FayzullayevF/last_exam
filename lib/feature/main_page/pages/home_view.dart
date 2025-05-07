import 'package:exam/data/repository/home_repository.dart';
import 'package:exam/feature/main_page/widgets/bottom_nav_bar.dart';
import 'package:exam/feature/main_page/widgets/home_app_bar.dart';
import 'package:exam/feature/main_page/widgets/home_main_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.repo});

  final HomeRepository repo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return HomeMainItem();
            }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
