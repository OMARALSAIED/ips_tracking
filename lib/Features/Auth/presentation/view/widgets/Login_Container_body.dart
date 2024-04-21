import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ips_tracking/Features/Auth/presentation/manger/block/auth_blok.dart';
import 'package:ips_tracking/Features/Auth/presentation/manger/block/auth_events.dart';
import 'package:ips_tracking/Features/Auth/presentation/manger/block/auth_state.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/CustomContainerTextField.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/CustomPassword_TextField.dart';
import 'package:ips_tracking/constant.dart';
import 'package:ips_tracking/core/utils/CustomButton.dart';
import 'package:ips_tracking/core/utils/Styles.dart';
import 'package:ips_tracking/core/utils/Validation.dart';
import 'package:ips_tracking/core/utils/app_routres.dart';

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
  final TextEditingController cardIDcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  late AuthBloc authBloc;
  @override
  void intitState()
  {
    authBloc=BlocProvider.of<AuthBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final msg=BlocBuilder<AuthBloc,AuthState>(builder: (context, state) 
    {
      if(state is LoginFaliureState)
      {
        return Text(state.errorMessage);
      }
      else if(state is LoginLoadingState)
      {
        return Center(child: CircularProgressIndicator(),);
      }
    },);
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
            controller: cardIDcontroller,
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
            controller: passwordcontroller,
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
            child: GestureDetector(
              onTap: ()
              {
                GoRouter.of(context).push(AppRouter.kQrCode);
              },
              child: Text(
                'Forgot password?',
                style: Styles.textstyle12,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
            text: 'Log in',
            onTap: () {
              authBloc.add(LoginButtonPress(CardId: cardIDcontroller.text, password: passwordcontroller.text));
              if (formstate.currentState!.validate()) {
                print("Vaild");
              } else {
                print('Not vaild');
              }
            },
          ),
            SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account ?',style: Styles.textstyle14,),
              
              GestureDetector(child: Text(' Sign Up',style: TextStyle(color: kBlackColor),),onTap: (){GoRouter.of(context).push(AppRouter.kSignUp);},),
            ],
          )
          
        ],
      ),
    );
  }
}
