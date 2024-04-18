

import 'package:go_router/go_router.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/Login.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/SignUp.dart';
import 'package:ips_tracking/Features/QrCode/presentation/views/QrCode.dart';
import 'package:ips_tracking/Features/splash/presentation/views/splash_view.dart';


abstract class AppRouter
{
  static const  kLogin='/Login';
  static const  kSignUp='/SignUp';
  static const  kQrCode='/QrCode';
 

  static final router=GoRouter(routes: [

    GoRoute(path: '/',builder: (context, state) => const Splashview(),),
    GoRoute(path: kLogin,builder: (context, state) => const Login(),),
    GoRoute(path: kSignUp,builder: (context, state) => const SignUp(),),
    GoRoute(path: kQrCode,builder: (context, state) => const QrCode(),),
    
    
  ]);
}