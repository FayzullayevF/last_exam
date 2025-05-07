import 'package:exam/feature/main_page/blocs/home_bloc.dart';
import 'package:exam/feature/main_page/blocs/home_state.dart';
import 'package:exam/feature/main_page/widgets/bottom_nav_bar.dart';
import 'package:exam/feature/main_page/widgets/home_app_bar.dart';
import 'package:exam/feature/main_page/widgets/home_main_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBody: true,
          body: CustomScrollView(
            slivers: [
              HomeAppBar(),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: 170.w / 240.h,
                ),
                delegate: SliverChildBuilderDelegate((
                  BuildContext context,
                  int index,
                ) {
                  return HomeMainItem(
                    image: state.model[index]!.image,
                    price: state.model[index]!.price,
                    currency: state.model[index]!.currency,
                    category: state.model[index]!.category,
                    totalFloor: state.model[index]!.totalFloors,
                    floor: state.model[index]!.floor,
                    area: state.model[index]!.area,
                    title: state.model[index]!.nearestPopularPlace.title,
                    svg: state.model[index]!.nearestPopularPlace.image,
                    distance: state.model[index]!.nearestPopularPlace.distance,
                    numOfRooms: state.model[index]!.numOfRooms,

                  );
                }, childCount: state.model.length),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
