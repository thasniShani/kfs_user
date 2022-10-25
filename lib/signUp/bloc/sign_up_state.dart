part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpSuccess extends SignUpState {}

class SignUpFailed extends SignUpState {
  SignUpFailed({required this.errMsg});
  String errMsg;
}
