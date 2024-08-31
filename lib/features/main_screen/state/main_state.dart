import 'package:exam_2/core/model/coin_model.dart';

abstract class MainState {}

class MainLoading extends MainState {}

class MainError extends MainState {
  final String errorMessage;

  MainError({required this.errorMessage});
}

class MainSuccess extends MainState {
  final List<CoinModel> data;
  MainSuccess({required this.data});
}
