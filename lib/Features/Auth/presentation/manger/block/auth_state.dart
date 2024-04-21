import 'package:equatable/equatable.dart';

class AuthState extends Equatable
{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
}
class LoginInitState extends AuthState{}

class LoginLoadingState extends AuthState{}
class LoginSuccessState extends AuthState{}
class LoginFaliureState extends AuthState
{
  final String errorMessage;

  LoginFaliureState({required this.errorMessage});

}

