part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}

// ignore: must_be_immutable
class UserSignUpEvent extends SignUpEvent {
  UserSignUpEvent({
    required this.user,
    required this.email,
    required this.password,
    required this.confirmpass,
    required this.mobile,
  });
  String user;
  String email;
  String password;
  String confirmpass;
  String mobile;
}
