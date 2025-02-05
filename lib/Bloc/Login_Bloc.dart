import 'package:flutter_bloc/flutter_bloc.dart';

part 'Login_Event.dart';
part 'Login_State.dart';

final class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() : super(LoginInitialState()){
    on<LoginRequested>((event, emit){
      
    });
  }
}