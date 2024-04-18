

import 'package:go_router/go_router.dart';
import 'package:ips_tracking/Features/Auth/presentation/view/Login.dart';
import 'package:ips_tracking/Features/QrCode/presentation/views/QrCode.dart';
import 'package:ips_tracking/Features/splash/presentation/views/splash_view.dart';


abstract class AppRouter
{
  static const  ksignUp='/signUp';
  static const  kQrCode='/QrCode';
 

  static final router=GoRouter(routes: [

    GoRoute(path: '/',builder: (context, state) => const Splashview(),),
    GoRoute(path: ksignUp,builder: (context, state) => const SignUp(),),
    GoRoute(path: kQrCode,builder: (context, state) => const QrCode(),),
    
    
  ]);
}