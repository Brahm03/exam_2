import 'package:bloc/bloc.dart';
import 'package:exam_2/core/constants/color/color_const.dart';
import 'package:exam_2/features/home_screen/page/home_screen.dart';
import 'package:exam_2/features/main_screen/state/main_state.dart';
import 'package:flutter/material.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainLoading());
  int index = 0;

  // * Screens
  List<Widget> pages = [
    const HomeScreen(),
    const SizedBox(),
    const SizedBox(),
  ];

  void onBarTapChanged(int i) {
    index = i;
    emit(MainSuccess(data: []));
  }

  Color checkCurrentTabColor(int i) {
    if (i == index) {
      return ColorConst.white;
    } else {
      return ColorConst.grey;
    }
  }
}
