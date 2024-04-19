import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/CustomContainerTextField.dart';
import 'package:ips_tracking/constant.dart';
import 'package:ips_tracking/core/utils/CustomButton.dart';
import 'package:ips_tracking/core/utils/Styles.dart';

class SignUpContainerBody extends StatelessWidget {
  const SignUpContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SizedBox(
            height: 30,
          ),

          Text('Get Started',style: Styles.textstyle40,),
          Text('Step 1',style: Styles.textstyle12,),
           SizedBox(
            height: 10,
          ),
          CustomContainerTextField(hint: 'Department', prefixIcon: Icon(Icons.domain,color: kBlackColor,),),
            SizedBox(
            height: 10,
          ),
          CustomContainerTextField(hint: 'Card iD', prefixIcon: Icon(Icons.calendar_view_day_outlined,color: kBlackColor,),),
            SizedBox(
            height: 10,
          ),
          CustomContainerTextField(hint: 'NationalID', prefixIcon: Icon(Icons.calendar_view_day_outlined,color: kBlackColor,),),
            SizedBox(
            height: 10,
          ),
          CustomContainerTextField(hint: 'Gender', prefixIcon: Icon(Icons.family_restroom_sharp,color: kBlackColor,),),
            SizedBox(
            height: 10,
          ),
          CustomContainerTextField(hint: 'Full Name', prefixIcon: Icon(Icons.person,color: kBlackColor,),)
          ,  SizedBox(
            height: 40,
          ),
          CustomButton(text: 'Next',onTap: (){},)
          
      ],
    );
  }
}