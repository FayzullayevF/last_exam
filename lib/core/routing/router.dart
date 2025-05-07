import 'package:exam/core/client.dart';
import 'package:exam/core/routing/routes.dart';
import 'package:exam/data/repository/home_repository.dart';
import 'package:exam/feature/main_page/blocs/home_bloc.dart';
import 'package:exam/feature/main_page/pages/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.home,
      builder:
          (context, state) => BlocProvider(
            create:
                (context) =>
                    HomeBloc(repo: HomeRepository(client: ApiClient())),
            child: HomeView(),
          ),
    ),
  ],
);
