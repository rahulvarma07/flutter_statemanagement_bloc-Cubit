part of 'Login_Bloc.dart';

sealed class LoginEvent{}

final class LoginRequested extends LoginEvent{}
final class LogoutRequested extends LoginEvent{}