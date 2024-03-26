part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class OnSignUp extends AuthEvent {
  const OnSignUp(this.email);

  final String email;

  @override
  List<Object> get props => [email];
}

class OnVeriyOtp extends AuthEvent {
  const OnVeriyOtp(this.otp);

  final VerifyOtpRequestEntity otp;

  @override
  List<Object> get props => [otp];
}
