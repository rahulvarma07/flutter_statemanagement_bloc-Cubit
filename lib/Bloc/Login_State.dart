part of 'Login_Bloc.dart';

sealed class LoginState{}
final class LoginInitialState extends LoginState{}
final class LoginSuccessState extends LoginState{}
final class LoginFailedState  extends LoginState{}
final class LoginInProcess    extends LoginState{}