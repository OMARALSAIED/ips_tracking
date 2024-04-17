import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:ips_tracking/core/utils/assets.dart';

class CustomLogoWithtext extends StatelessWidget {
  const CustomLogoWithtext({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
      const  SizedBox(height: 4),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}