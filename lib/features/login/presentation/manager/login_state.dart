abstract class LoginState {}

 class LoginInitial extends LoginState {}
 class LoginLoading extends LoginState {}
 class LoginSuccess extends LoginState {}
 class LoginFailed extends LoginState {

  final String error ;

  LoginFailed({required this.error});
 }
class LoginChangeObscurePassword extends LoginState {}

