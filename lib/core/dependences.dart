import 'package:exam/data/repository/home_repository.dart';
import 'package:exam/feature/main_page/blocs/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'client.dart';

List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
  BlocProvider(create: (context)=> HomeBloc(repo: HomeRepository(client: ApiClient())))
];