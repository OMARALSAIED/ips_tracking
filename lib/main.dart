import 'package:flutter/material.dart';
import 'package:ips_tracking/constant.dart';
import 'package:ips_tracking/core/utils/app_routres.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor),
      debugShowCheckedModeBanner: false,
    );
  }
}

