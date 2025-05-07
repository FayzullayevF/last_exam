import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/home_model.dart';
part 'home_state.freezed.dart';

enum HomeStatus{idle, loading, error}
@freezed
abstract class HomeState with _$HomeState{
  const factory HomeState({required HomeStatus? status, required List<HomeModel?> model})= _HomeState;
  factory HomeState.initial() {
    return HomeState(status: HomeStatus.loading, model: []);
  }
}