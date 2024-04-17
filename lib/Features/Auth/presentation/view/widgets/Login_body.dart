import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/Login_Container_body.dart';
import 'package:ips_tracking/core/utils/assets.dart';


class  LoginBody extends StatelessWidget {
  const  LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
       
        children: [
          Image.asset(AssetsData.unlock),
          Container(
           width: MediaQuery.of(context).size.width * 1,
           height:635,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(55)),
            gradient: LinearGradient(colors: [Color.fromARGB(255, 192, 68, 52),Color.fromARGB(143, 179, 121, 223)]),
          ),
          child: LoginContianerBody(),
          )
        ]
      ),
    );
  }
}

