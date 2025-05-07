import 'package:bloc/bloc.dart';
import 'package:exam/data/repository/home_repository.dart';
import 'package:exam/feature/main_page/blocs/home_event.dart';
import 'package:exam/feature/main_page/blocs/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repo;

  HomeBloc({required HomeRepository repo})
    : _repo = repo,
      super(HomeState.initial()) {
    on<HomeLoading>(_onLoad);
  }

  Future<void> _onLoad(HomeEvent event, Emitter<HomeState> emit) async {
    final model = await _repo.fetchItems();
    emit(state.copyWith(status: HomeStatus.success, model: model));
  }
}
