import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/Login_Container_body.dart';
import 'package:ips_tracking/constant.dart';
import 'package:ips_tracking/core/utils/assets.dart';


class  LoginBody extends StatelessWidget {
  const  LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        Image.asset(AssetsData.unlock),
        Expanded(
         
          child: SingleChildScrollView(
            child: Container(
             width: MediaQuery.of(context).size.width * 1,
             height:635,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(55)),
              gradient: LinearGradient(colors: [kliner1,kliner2]),
            ),
            child: LoginContianerBody(),
            ),
          ),
        )
      ]
    );
  }
}

