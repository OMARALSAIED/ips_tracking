import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/widgets/Login_body.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      
      body:LoginBody(),
    );
  }
}