import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/splash/presentation/views/widgets/splahs_view_body.dart';


class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: SplashViewBody(),
    );
  }
}