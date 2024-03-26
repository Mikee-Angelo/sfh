import 'package:equatable/equatable.dart';

class VerifyOtpRequestEntity extends Equatable {
  const VerifyOtpRequestEntity({
    required this.email,
    required this.otp,
  });

  final String email;
  final String otp;

  @override
  List<Object?> get props => [email, otp];
}
