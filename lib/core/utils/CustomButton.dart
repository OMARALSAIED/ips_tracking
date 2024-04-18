import 'package:flutter/material.dart';
import 'package:ips_tracking/core/utils/Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,this.text});

 final Function()? onTap;
 final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors: [Color(0xff9C3FE4),Color(0xffC65647)])),
        child: Text('$text',style: Styles.textstyle16,),
      ),
      
    );
  }
}