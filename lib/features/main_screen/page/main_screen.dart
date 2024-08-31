import 'package:exam_2/core/constants/icons/icon_const.dart';
import 'package:exam_2/features/main_screen/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_flutter/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<MainCubit>().pages[context.watch<MainCubit>().index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: context.watch<MainCubit>().index,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            context.read<MainCubit>().onBarTapChanged(value);
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconConst.home,
                  colorFilter: ColorFilter.mode(
                    context.read<MainCubit>().checkCurrentTabColor(0),
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Balance'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconConst.fire,
                  colorFilter: ColorFilter.mode(
                    context.read<MainCubit>().checkCurrentTabColor(1),
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Trending'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconConst.plus,
                  colorFilter: ColorFilter.mode(
                    context.read<MainCubit>().checkCurrentTabColor(2),
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Top Up'),
          ]),
    );
  }
}
