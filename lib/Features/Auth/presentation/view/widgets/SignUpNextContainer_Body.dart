import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/CustomContainerTextField.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/CustomPassword_TextField.dart';
import 'package:ips_tracking/constant.dart';
import 'package:ips_tracking/core/utils/CustomButton.dart';
import 'package:ips_tracking/core/utils/Styles.dart';
import 'package:ips_tracking/core/utils/app_routres.dart';

class SignUpNextContainerBody extends StatelessWidget {
  const SignUpNextContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SizedBox(
            height: 30,
          ),

          Text('Get Started',style: Styles.textstyle40,),
          Text('Step 2',style: Styles.textstyle12,),
           SizedBox(
            height: 10,
          ),
          CustomContainerTextField(hint: 'Date Of Birth', prefixIcon: Icon(Icons.pages,color: kBlackColor,),),
            SizedBox(
            height: 10,
          ),
          CustomContainerTextField(hint: 'phone Number', prefixIcon: Icon(Icons.phone,color: kBlackColor,),),
            SizedBox(
            height: 10,
          ),
           CustomContainerTextField(hint: 'Address', prefixIcon: Icon(Icons.location_city,color: kBlackColor,),),
            SizedBox(
            height: 10,
          ),
          CustomContainerTextField(hint: 'Email', prefixIcon: Icon(Icons.email,color: kBlackColor,),),
            SizedBox(
            height: 10,
          ),
         CustomPasswordTextField(hint: 'Password', prefixIcon: Icon(Icons.key,color: kBlackColor,)),
            SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(text: 'Sign Up',onTap: ()
          {
            GoRouter.of(context).push(AppRouter.kSignUpNext);
          }
          ,)
          
      ],
    );
  }
}