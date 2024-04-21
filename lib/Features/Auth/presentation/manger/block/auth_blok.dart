import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ips_tracking/Features/Auth/presentation/data/repo/auth_repo.dart';
import 'package:ips_tracking/Features/Auth/presentation/manger/block/auth_events.dart';
import 'package:ips_tracking/Features/Auth/presentation/manger/block/auth_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  final AuthRepository repo;

  AuthBloc(AuthState initialState, this.repo) : super(initialState);

  @override
  Stream<AuthState> mapEventToState(AuthEvents event) async* {
    var pref=await SharedPreferences.getInstance();
    if (event is StartEvent) {
     
      yield LoginInitState(); 
    } else if (event is LoginButtonPress) {
      // Perform login logic
      var data = await repo.login(event.CardId, event.password);
      if(data['message']=="Login successful")
      {
        pref.setString('token', data['token']);
        pref.setString('studentID', data['studentID']);
        pref.setString('cardID', data['cardID']);
        yield LoginSuccessState();
      }else{
        yield LoginFaliureState(errorMessage: "Auth error message");
      }
     
      
    }
  }
}
