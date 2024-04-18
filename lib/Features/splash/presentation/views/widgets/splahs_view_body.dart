import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ips_tracking/Features/splash/presentation/views/widgets/custom_Logo.dart';
import 'package:ips_tracking/core/utils/app_routres.dart';
import 'package:ips_tracking/core/utils/assets.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState()
  {
    super.initState();
    initSlidinganimation();
    navigateToHome();
  }

  @override
  void dispose()
  {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: [
            // Column with Logo and SlidingText
            Positioned.fill(
              child: CustomLogoWithtext(slidingAnimation: slidingAnimation),
            ),
            // Overlay image
            Positioned(
              top: 100, // adjust this value as needed    
              child: Image.asset(
                AssetsData.back,
                width: 420, // adjust this value as needed
                height: 500, // adjust this value as needed
              ),
            ),
          ],
        );
  }


  void navigateToHome()
  {
    Future.delayed(const Duration(seconds: 2),()
    {
      GoRouter.of(context).push(AppRouter.kLogin);
    }
    
    );
  }

  void initSlidinganimation()
  {
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>(begin: const Offset(0, 2),end: Offset.zero).animate(animationController);
    animationController.forward();
  }
}

