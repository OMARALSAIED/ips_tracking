import 'package:equatable/equatable.dart';

class AuthEvents extends Equatable
{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class StartEvent extends AuthEvents
{
}

class LoginButtonPress extends AuthEvents
{
  final String CardId;
  final String password;

  LoginButtonPress({required this.CardId, required this.password});
}