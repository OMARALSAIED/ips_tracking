import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/CustomContainerTextField.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/CustomPassword_TextField.dart';
import 'package:ips_tracking/constant.dart';
import 'package:ips_tracking/core/utils/CustomButton.dart';
import 'package:ips_tracking/core/utils/Styles.dart';
import 'package:ips_tracking/core/utils/Validation.dart';

// ignore: must_be_immutable
class LoginContianerBody extends StatefulWidget {
  LoginContianerBody({
    super.key,
  });

  @override
  State<LoginContianerBody> createState() => _LoginContianerBodyState();
}

class _LoginContianerBodyState extends State<LoginContianerBody> {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  final TextEditingController cardID = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formstate,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Welcome Back!',
            style: Styles.textstyle40,
          ),
          SizedBox(
            height: 40,
          ),
          CustomContainerTextField(
            hint: 'Card ID',
            prefixIcon: Icon(
              Icons.person,
              color: kBlackColor,
            ),
            validator: (val) {
              return validateNumber(val!, 4, 12);
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomPasswordTextField(
            hint: 'Password',
            prefixIcon: Icon(
              Icons.key,
              color: kBlackColor,
            ),
            validator: (val) {
              return VaildationInput(val!, 3, 10);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: Text(
              'Forgot password?',
              style: Styles.textstyle12,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
            text: 'Log in',
            onTap: () {
              if (formstate.currentState!.validate()) {
                print("Vaild");
              } else {
                print('Not vaild');
              }
            },
          )
        ],
      ),
    );
  }
}
