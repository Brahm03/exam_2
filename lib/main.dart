import 'package:exam_2/core/constants/theme/app_theme.dart';
import 'package:exam_2/features/main_screen/cubit/main_cubit.dart';
import 'package:exam_2/features/main_screen/page/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<MainCubit>(
      create: (context) => MainCubit(),
    )
  ], child: Exam2()));
}

class Exam2 extends StatelessWidget {
  const Exam2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: MainScreen(),
    );
  }
}
