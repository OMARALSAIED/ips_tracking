import 'package:flutter/material.dart';
import 'package:ips_tracking/core/utils/Styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation,
              child:  Column(children: [const Text(
                
                "I P S",
                textAlign: TextAlign.center,
                style: Styles.textstyle25,
              ),
               Text(
                
                "Technology",
                textAlign: TextAlign.center,
                style: Styles.textstyle30.copyWith(color: const Color.fromARGB(123, 158, 158, 158)),
              )
              
              
              ],));
        });
  }
}
