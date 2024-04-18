import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/SingUpContainerBody.dart';
import 'package:ips_tracking/constant.dart';
import 'package:ips_tracking/core/utils/assets.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Image.asset(AssetsData.singupperson),
          Expanded(
         
          child: SingleChildScrollView(
            child: Container(
             width: MediaQuery.of(context).size.width * 1,
             height:635,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(45),topRight: Radius.circular(45)),
              gradient: LinearGradient(colors: [kliner1,kliner2]),
            ),
            child: SingUpContainerBody(),
            ),
          ),
        )
      ],
    );
  }
}