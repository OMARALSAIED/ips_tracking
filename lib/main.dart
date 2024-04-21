import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ips_tracking/Features/Auth/presentation/data/repo/auth_repo.dart';
import 'package:ips_tracking/Features/Auth/presentation/manger/block/auth_blok.dart';
import 'package:ips_tracking/Features/Auth/presentation/manger/block/auth_state.dart';
import 'package:ips_tracking/constant.dart';
import 'package:ips_tracking/core/utils/app_routres.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: 
      [
        BlocProvider(create: (context)=> AuthBloc(LoginInitState(), AuthRepository()))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

